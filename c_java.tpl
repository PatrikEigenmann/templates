/* ***********************************************************************************
 * <filename>.c - Starter Programm to run a Java application.
 * Please rename all <filename> tags with the actual name of the java class, replace
 * <day> and <date> with the actual day (3 letter word) and date (Format YYYY-MM-DD),
 * make sure there are no typos. Compile and link the c program, and your good to go.
 *
 * Here are the compile instructions:
 * clang/gcc <filename>.c -o <filename>.bin
 * pmake <filename>.makefile
 * -----------------------------------------------------------------------------------
 * Author: Patrik Eigenmann
 * eMail:  p.eigenmann@gmx.net
 * GitHub: www.github.com/PatrikEigenmann/Java
 * -----------------------------------------------------------------------------------
 * Change Log:
 * DAY YYYY-MM-DD File created.                                         Version: 00.01
 * *********************************************************************************** */
#include <stdio.h>
#include <stdlib.h>

// -----------------------------------------------------------------------------------
// main - The main function is the starting point of a C or C++ program, where
// execution begins. This version of the main function allows the program to take
// command-line arguments when it runs. The function typically returns an numbered
// value to the operating system, often zero to signify successful execution.
//
// @param argc  The number of command-line arguments.
// @param argv  The array of command-line arguments.
// @return      0 on successful completion, 1 on error.
// -----------------------------------------------------------------------------------
int main (int argc, char **argv) {

    // calling the java virtual machine on command
    // line level but also hide the command line promt.
    // Windows:             "java -classpath \"D:\\Development\\Java\\Samael:.\" <filename> > /dev/null 2>&1"
    // Linux/Unix/MacOS:    "java -classpath \"/Users/patrik/Development/Java/Samael:.\" <filename> > /dev/null 2>&1"
    system("java -classpath \"/Users/patrik/Development/Java/Samael:.\" <filename>");
    return 0;
}