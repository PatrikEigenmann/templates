# -----------------------------------------------------------------------------------------------
# {file_name} - This makefile is for jmake, a tool designed for the {project_name} project. jmake
# simplifies building your software by automatically running the Java compiler of your choice.
# Think of it as a smart assistant that ensures all the pieces of your project come together
# perfectly, saving you time and minimizing errors.
# ------------------------------------------------------------------------------------------------
# Author: Patrik Eigenmann 
# eMail:  p.eigenmann@gmx.net
# GitHub: www.github.com/PatrikEigenmann/Java
# ------------------------------------------------------------------------------------------------
# Change Log:
# DAY YYYY-MM-DD File created.                                                      Version: 00.01
# ------------------------------------------------------------------------------------------------

# The Java compiler is key for building the project. By default, the system's standard Java compiler 
# (based on the installed JRE) is used. Most developers set their preferred JDK and update the PATH 
# variable. Usually, no changes are needed here, but for legacy or compatibility reasons, you can 
# specify a custom compiler with javac=/path/to/your/jdk/bin/javac.
javac=

# The 'classpath' directive defines the classpath (-cp string). If left empty, adding the current 
# folder "." is common practice. For project-specific classpaths, you can either list all paths 
# ending with an empty line or "# end of classpath," or use an external file like 
# classpath=@classpath.txt to specify libraries.
classpath=.
/Users/patrik/Development/Java/Samael
# end of classpath

# The `src` directive specifies source files for compilation. If left empty, `jmake` compiles all 
# "*.java" files in the current folder. For projects with sub-directories, use @source.txt. `jmake` 
# will recursively find all "*.java" files, save them to the text file, and delete it after compilation 
# as part of the cleanup process.
src=@source.txt