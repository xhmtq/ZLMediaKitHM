find_path(AVCODEC_INCLUDE_DIR
        NAMES libavcodec/avcodec.h
        PATHS ${CMAKE_CURRENT_SOURCE_DIR}/../3rdpart/ffmpeg/include)

find_library(AVCODEC_LIBRARY
        NAMES avcodec
        PATHS ${CMAKE_CURRENT_SOURCE_DIR}/../3rdpart/ffmpeg/lib)

set(AVCODEC_LIBRARIES ${AVCODEC_LIBRARY})
set(AVCODEC_INCLUDE_DIRS ${AVCODEC_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(AVCODEC DEFAULT_MSG AVCODEC_LIBRARY AVCODEC_INCLUDE_DIR)
