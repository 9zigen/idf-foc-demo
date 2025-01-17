# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/alekseyvolkov/dev/sdk/esp32/esp-idf-5.2.2/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Users/alekseyvolkov/dev/sdk/esp32/esp-idf-5.2.2/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/tmp"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/src/bootloader-stamp"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/src"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/alekseyvolkov/dev/esp32/foc_knob/cmake-build-debug/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
