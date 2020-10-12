cmake_minimum_required(VERSION 3.16)
project(HelloWorld)

# Include the magic
include(magic.cmake)

# Create a project
magic_add_executable(hello_world
    main.cpp
    hello.ixx
    hello.cpp)