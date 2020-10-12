# ModuleHelloWorld
This is a very basic example of how to get C++20 modules to work with CMake and the latest Visual Studio Preview.

It'll allow you to start experimenting with modules right now, but it does have many limitations. Do not use this in any production environment, and instead wait for compilers and build tools to be updated.

# Requirements and limitations
 - Visual Studio 16.8.0 Preview 3 or higher for basic module support.
 - Visual Studio 16.8.0 Preview 4 or higher for module partition support.
 - Only the Visual Studio generator in CMake will work. You cannot for example use Ninja with MSVC. MSBuild has to do most of the work since CMake does not actually support modules (yet).
 - Since we rely on default MSBuild behaviour, the module interface file extensions have to be either `.ixx` or `.cppm`. Extensions like `.mpp` will not work.
