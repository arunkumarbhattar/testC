cmake_minimum_required(VERSION 3.22)
project(testC C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_COMPILER /home/arun/Desktop/compiler_changes/checkedc-llvm-project/llvm/cmake-build-debug/bin/clang-12)

include_directories(Bubble_Sort)
add_compile_options(-Debug -Wall -Wextra  -lstdc++)
add_link_options(-lstdc++ -ldl)
add_executable(testC "${CMAKE_SOURCE_DIR}/Bubble_Sort/libfinal.a" "${CMAKE_SOURCE_DIR}/Bubble_Sort/libimg_lib_wasm.a" "${CMAKE_SOURCE_DIR}/Bubble_Sort/sort.mChecked.c" )
target_link_libraries(testC ${CMAKE_SOURCE_DIR}/Bubble_Sort/libfinal.a ${CMAKE_SOURCE_DIR}/Bubble_Sort/libimg_lib_wasm.a)