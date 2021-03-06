include(ExternalProject)

SET( ALUDETECT_DEPENDENCIES )


include(zlib.cmake)
LIST(APPEND ALUDETECT_DEPENDENCIES ${ZLIB_PROJECT})
include(bamtools.cmake)
LIST(APPEND ALUDETECT_DEPENDENCIES ${BAMTOOLS_PROJECT})
include(minimap2.cmake)
LIST(APPEND ALUDETECT_DEPENDENCIES ${MINIMAP2_PROJECT})
include(gtest.cmake)
LIST(APPEND ALUDETECT_DEPENDENCIES ${GTEST_PROJECT})

SET(ALUDETECT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external CACHE INTERNAL "" FORCE)

SET(ALUDETECT_EXTERNAL_PROJECT_DIR ${CMAKE_BINARY_DIR}/externals/aludetect_external_project CACHE INTERNAL "external project directory")
SET(ALUDETECT_EXTERNAL_PROJECT aludetect_external_project CACHE INTERNAL "all alu_detect external projects")
ExternalProject_Add(${ALUDETECT_EXTERNAL_PROJECT}
    DEPENDS ${ALUDETECT_DEPENDENCIES}
    DOWNLOAD_COMMAND ""
    SOURCE_DIR ${ALUDETECT_SOURCE_DIR}
    BINARY_DIR ${ALUDETECT_EXTERNAL_PROJECT_DIR}/bin
    INSTALL_COMMAND ""
    UPDATE_COMMAND ""
    CMAKE_CACHE_ARGS
        -DCMAKE_C_COMPILER:STRING=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER:STRING=${CMAKE_CXX_COMPILER}
)
