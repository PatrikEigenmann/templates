/* *******************************************************************************************
 * {file_name} - <description>
 *
 * Compile instructions:
 * gcc/clang {file_name} -o {project_name}
 * pmake {project_name}.makefile
 * -------------------------------------------------------------------------------------------
 * Author:  Patrik Eigenmann
 * eMail:   p.eigenmann@gmx.net
 * GitHub:  www.github.com/PatrikEigenmann/cpp
 * -------------------------------------------------------------------------------------------
 * DAY YYYY-MM-DD File created.                                                 Version: 00.01
 * -------------------------------------------------------------------------------------------
 * To Do's:
 * ********************************************************************************************/
#include<stdio.h>

#ifdef _WIN32
// --= Windows Section please uncomment what you need! =-- //
//    #include "..\mylibs\cVersion.h"
//    #include "..\mylibs\cManPage.h"
//    #include "..\mylibs\cProgress.h"

#else
// --= MacOS/Linux Section please uncomment what you need! =-- //
//    #include "../mylibs/cVersion.h"
//    #include "../mylibs/cManPage.h"
//    #include "../mylibs/cProgress.h"

#endif

/* ---------------------------------------------------------------------------------------------------------
 * The print_help function is our top-notch guidance feature, crafted to provide users with clear, intuitive
 * instructions for leveraging our command-line utility within the Windows Command Prompt environment.
 * Think of it as your personal guide, always ready to offer step-by-step explanations for each option
 * available in the tool.
 *
 * When users invoke this function, they receive a straightforward and well-structured breakdown of all possible
 * commands, ensuring they can navigate directory listings with ease and efficiency. With familiar flags
 * like -l and -a, the experience feels intuitive, mirroring the user-friendly nature of Unix systems, but
 * optimized for the Windows Command Prompt.
 *
 * In essence, show_help embodies our commitment to user empowerment, making sure every feature is accessible
 * and easily understood. This minimizes learning curves and maximizes productivity. This function is the
 * cornerstone of our user-centric approach, providing instant, reliable support whenever needed. Welcome to a
 * new era of intuitive, efficient command-line interaction.
 * --------------------------------------------------------------------------------------------------------- */
void print_help() {
    
    // Version control implemented
    Version v = create_version(0, 1);
        
    // The buffer is needed to write
    // the correct formated version number.
    char buffer[6];
    
    // Format the buffer with the
    // correct version number.
    to_string(v, buffer);

    char *manpage = NULL;

    // Write the ManPage style help file.
    append_format(&manpage, "NAME\n");
    append_format(&manpage, "      <c program> Version: %s\n", buffer);
    append_format(&manpage, "      \n");
    append_format(&manpage, "      \n");
    append_format(&manpage, "\n");
    append_format(&manpage, "SYNOPSIS\n");
    append_format(&manpage, "      <c program> <parameters>\n");
    append_format(&manpage, "\n");
    append_format(&manpage, "DESCRIPTION\n");
    append_format(&manpage, "      \n");
    append_format(&manpage, "      \n");
    append_format(&manpage, "\n");
    append_format(&manpage, "      -h, -H, -help\n");
    append_format(&manpage, "                    Display this help message.\n");
    append_format(&manpage, "\n");
    append_format(&manpage, "AUTHOR\n");
    append_format(&manpage, "      Patrik Eigenmann (p.eigenmann@gmx.net).\n");
    append_format(&manpage, "\n");
    append_format(&manpage, "COPYRIGHT\n");
    append_format(&manpage, "      Copyright 2024 Free Software Foundation, Inc. License GPLv3+:\n");
    append_format(&manpage, "      GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\n");
    append_format(&manpage, "      This is free software: you are free to change and redistribute it.\n");
    append_format(&manpage, "      There is NO WARRANTY, to the extent permitted by law.\n");

    // Create the manpage in the file ~/.local/share/<c program>.man
    create_manpage("<c program>", manpage, v.major, v.minor);
    
    // Free up the memory.
    free(manpage);
}

// ---------------------------------------------------------------------------------------------
// main - The main function is the starting point of a C or C++ program, where execution begins.
// This version of the main function allows the program to take command-line arguments when it
// runs. The function typically returns an numbered value to the operating system, often zero
// to signify successful execution.
//
// @param argc  The number of command-line arguments.
// @param argv  The array of command-line arguments.
// @return      0 on successful completion, 1 on error.
// ----------------------------------------------------------------------------------------------
int main (int argc, char **argv) {
    
    return 0;
}