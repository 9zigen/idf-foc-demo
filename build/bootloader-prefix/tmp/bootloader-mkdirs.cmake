# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/alekseyvolkov/dev/sdk/esp32/esp-idf-5.2.2/components/bootloader/subproject"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/tmp"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/src"
  "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/alekseyvolkov/dev/esp32/foc_knob/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
