cmake_minimum_required(VERSION 3.15)
project(smo)

set(CMAKE_CXX_STANDARD 14)

set ( CMAKE_C_FLAGS "-static-libgcc -static-libstdc++")

add_executable(smo main.cpp)