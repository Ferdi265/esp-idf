include($ENV{IDF_PATH}/tools/cmake/utilities.cmake)

set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER xtensa-esp32-elf-clang)
set(CMAKE_CXX_COMPILER xtensa-esp32-elf-clang++)
set(CMAKE_ASM_COMPILER xtensa-esp32-elf-gcc)
set(_CMAKE_TOOLCHAIN_PREFIX xtensa-esp32-elf-)


remove_duplicated_flags("-mlongcalls -Wno-frame-address ${CMAKE_C_FLAGS}" UNIQ_CMAKE_C_FLAGS)
set(CMAKE_C_FLAGS "${UNIQ_CMAKE_C_FLAGS}" CACHE STRING "C Compiler Base Flags" FORCE)
remove_duplicated_flags("-mlongcalls -Wno-frame-address ${CMAKE_CXX_FLAGS}" UNIQ_CMAKE_CXX_FLAGS)
set(CMAKE_CXX_FLAGS "${UNIQ_CMAKE_CXX_FLAGS}" CACHE STRING "C++ Compiler Base Flags" FORCE)
