find_path(SWRESAMPLE_INCLUDE_DIR
        NAMES libswresample/swresample.h
        PATHS ${CMAKE_CURRENT_SOURCE_DIR}/../3rdpart/ffmpeg/include)

find_library(SWRESAMPLE_LIBRARY
        NAMES swresample
        PATHS ${CMAKE_CURRENT_SOURCE_DIR}/../3rdpart/ffmpeg/lib)

set(SWRESAMPLE_LIBRARIES ${SWRESAMPLE_LIBRARY})
set(SWRESAMPLE_INCLUDE_DIRS ${SWRESAMPLE_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(SWRESAMPLE DEFAULT_MSG SWRESAMPLE_LIBRARY SWRESAMPLE_INCLUDE_DIR)
