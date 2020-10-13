# This function demonstrates how to trick CMake into configuring module interface files correctly.
function(magic_add_executable TARGET)

    # Create the executable as normal
    add_executable(${ARGV})

    # Also set the C++ version of the target to C++20
    target_compile_features("${TARGET}" PUBLIC cxx_std_20)

    # Get the sources that were added to the target
    get_target_property(TARGET_SOURCES "${TARGET}" SOURCES)

    # Filter out the module interface units
    list(FILTER TARGET_SOURCES INCLUDE REGEX "(.ixx|.cppm)$")
    message("Interface units: ${TARGET_SOURCES}")

    # Override CMake's behaviour of explicitly setting the compilation tools,
    # and instead set it to the default and let MSBuild decide.
    set_source_files_properties(${TARGET_SOURCES} PROPERTIES VS_TOOL_OVERRIDE "ClCompile")

endfunction()