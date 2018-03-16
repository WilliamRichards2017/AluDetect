#include "knownAlus.h"
#include <cstring>
#include "fastqParse.h"
#include "polyATail.h"
#include <zlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <vector>
#include "/uufs/chpc.utah.edu/common/home/u0401321/RufAlu/bin/externals/minimap2/src/minimap2_project/minimap.h"
#include "/uufs/chpc.utah.edu/common/home/u0401321/RufAlu/bin/externals/minimap2/src/minimap2_project/kseq.h" 

KSEQ_INIT(gzFile, gzread)

void KnownAlus::runMiniMap()
{

  mm_idxopt_t iopt;
  mm_mapopt_t mopt;
  int n_threads = 3;
  const char * fastaName = "../test_data/primate_non-LTR_Retrotransposon.fasta";
  const char * fastaIndexName = "../test_data/primate_non-LTR_Retrotransposon.fasta.fai";

  std::cout << "reading in contig fasta file " << contigFilePath_ << std::endl;



  mm_verbose = 2; // disable message output to stderr                                                                                                                                                                                         
  mm_set_opt(0, &iopt, &mopt);




  mopt.flag |= MM_F_CIGAR; // perform alignment                                                                                                                                                                                               

  // open query file for reading; you may use your favorite FASTA/Q parser                                                                                                                                                                    
  gzFile f = gzopen(contigFilePath_, "r");
  assert(f);
  kseq_t *ks = kseq_init(f);

  // open index reader                                                                                                                                                                                                                        
  mm_idx_reader_t *r = mm_idx_reader_open(aluFilePath_, &iopt, 0);
  mm_idx_t *mi;
  while ((mi = mm_idx_reader_read(r, n_threads)) != 0) { // traverse each part of the index
    mm_mapopt_update(&mopt, mi); // this sets the maximum minimizer occurrence
    mm_tbuf_t *tbuf = mm_tbuf_init(); // thread buffer; for multi-threading, allocate one tbuf for each thread                                                                                                                               
    
    while (kseq_read(ks) >= 0) { // each kseq_read() call reads one query sequence                                                                                                                                                           
      //std::cout << "looping through kseq_reads" << std::endl; 

      mm_reg1_t *reg;
      int j, i, n_reg;
      
      reg = mm_map(mi, ks->seq.l, ks->seq.s, &n_reg, tbuf, &mopt, 0); // get all hits for the query                                                                                                                                          
      
      //std::cout << "nreg is: " << n_reg << std::endl;
      for (j = 0; j < n_reg; ++j) { // traverse hits and print them out
	//std::cout << "traversing hits" << std::endl;
        mm_reg1_t *r = &reg[j];
        assert(r->p); // with MM_F_CIGAR, this should not be NULL                                                                                                                                                                             
	//std::cout << ks->name.s << ", " << ks->seq.l << std::endl;
	
        printf("%s\t%d\t%d\t%d\t%c\t", ks->name.s, ks->seq.l, r->qs, r->qe, "+-"[r->rev]);
        printf("%s\t%d\t%d\t%d\t%d\t%d\t%d\tcg:Z:", mi->seq[r->rid].name, mi->seq[r->rid].len, r->rs, r->re, r->mlen, r->blen, r->mapq);
        for (i = 0; i < r->p->n_cigar; ++i) // IMPORTANT: this gives the CIGAR in the aligned regions. NO soft/hard clippings!                                                                                                                
          printf("%d%c", r->p->cigar[i]>>4, "MIDSHN"[r->p->cigar[i]&0xf]);
        putchar('\n');
        free(r->p);
      }
      free(reg);
    }
    mm_tbuf_destroy(tbuf);
    mm_idx_destroy(mi);
  }
  mm_idx_reader_close(r); // close the index reader                                                                                                                                                                                           
  kseq_destroy(ks); // close the query file                                                                                                                                                                                                   
  gzclose(f);
}

KnownAlus::KnownAlus(const char * contigFilePath, const char * aluFilePath, const char * aluIndexPath) : contigFilePath_(contigFilePath), aluFilePath_(aluFilePath), aluIndexPath_(aluIndexPath){
  contigsContainingKnownAlus_ = new std::vector<const char *>;
  runMiniMap();
  KnownAlus::findContigsContainingKnownAlus();
}

KnownAlus::~KnownAlus(){
  contigsContainingKnownAlus_->clear();
}

void findContigsContainingPolyATails(){
  std::vector<std::string> fastaSeqs = bioio::read_fasta_seqs("../test_data/primate_non-LTR_Retrotransposon.fasta");
  auto recordCount = bioio::count_fasta_records("../test_data/primate_non-LTR_Retrotransposon.fasta");

  for(int i=0; i < fastaSeqs.size(); ++i){
    if(polyA::detectPolyATail(std::string(fastaSeqs[i]))){
      bool b = polyA::detectPolyATail(fastaSeqs[i]);
      if(b){
	std::cout << "found alu w/poly a tail" << std::endl;      
      }
    }
  }  
}

void KnownAlus::findContigsContainingKnownAlus(){


  mm_idxopt_t iopt;
  mm_mapopt_t mopt;
  mm_set_opt(0, &iopt, &mopt);

  std::cout << "idxopts are:  k: " << iopt.k <<"  w: "<< iopt.w << "  flag: " << iopt.flag << "  bucket_bits: " << iopt.bucket_bits << std::endl;


  //mopt.flag |= MM_F_CIGAR; // perform alignment

  std::cout << "contig file path is: " << contigFilePath_ << std::endl;

  mm_idx_reader_t *indexReader = mm_idx_reader_open(aluIndexPath_, &iopt, NULL);
  mm_idx_t *fastaIndex = mm_idx_reader_read(indexReader, 40);  

  int returnValue =  mm_map_file(fastaIndex, contigFilePath_, &mopt, 20);

  if(returnValue == 0){
    std::cout << "mapping was successfull" << std::endl;
  }
  else{
    std::cout << "mapping was unsuccessfull you fucker" << std::endl;
  }

  
}


std::vector<const char *> * KnownAlus::getContigsContainingKnownAlus(){
  
  return contigsContainingKnownAlus_;
}