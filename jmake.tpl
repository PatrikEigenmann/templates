# -----------------------------------------------------------------------------------------------
# {file_name} - This file is the makefile for the tool jmake for the project {project_name}.
# jmake is a tool that reads instructions you give it about how to use a java compiler of your choice
# and then automatically runs the compiler to build your software projects. Imagine it as a smart
# assistant that knows exactly how to compile and prepare all the pieces of your software, ensuring
# everything fits together correctly without you having to manually run each step. This automation
# makes the development process faster and reduces the chance of errors.
# ------------------------------------------------------------------------------------------------
# Author: Patrik Eigenmann 
# eMail:  p.eigenmann@gmx.net
# GitHub: www.github.com/PatrikEigenmann/Java
# ------------------------------------------------------------------------------------------------
# Change Log:
# DAY YYYY-MM-DD File created.                                                      Version: 00.01
# ------------------------------------------------------------------------------------------------

# The java compiler used for compiling the project is essential. Whatever version of jre your system
# has installed, that is the standard java compiler. If you're into developing software, the chance
# is high that you installed your prefered jdk and you adjusted the path environment variable. So,
# most of the times there is nothing to do with this directive, but with in some legacy and compatibility
# situations, you might want to adjust the standard java complier with javac=/path/to/your/jdk/bin/javac.
javac=

# The 'classpath' directive specifies the classpath -cp string. If the 'classpath' directive is empty,
# Adding the current folder "." is common practice to add to the classpath. To define project specific
# classpath's, there are different methods to achieve that. Either all paths are followed of the classpath=.
# with the indicator that the classpath is at the end by a empty line or # end of classpath, or and external
# file "classpath.txt" can be used to define the libraries in the class path like
# classpath=@classpath.txt 
classpath=.
/Users/patrik/Development/Java/Samael
# end of classpath

# The `src` directive specifies the source files that require compilation. If the `src` directive is
# left empty, `jmake` assumes that all the code files in the active folder need to be compiled "*.java"
# for complex projects with sub-directories, please use the @source.txt in this directive. jmake will
# automatically perform a recursive find -name *.java and stores the findings in the defined text file.
# after the compilation, the text file will be deleted as a clean up process.
src=@source.txt