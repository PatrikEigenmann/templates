#!/bin/bash
# ****************************************************************************************************
# {file_name} - <description>
# ----------------------------------------------------------------------------------------------------
# Author: 	Patrik Eigenmann
# eMail: 	p.eigenmann@gmx.net
# GitHub: 	www.github.com/PatrikEigenmann/Java
# ----------------------------------------------------------------------------------------------------
# Change Log:
# DAY YYYY-MM-DD File created.															Version: 00.01
# ----------------------------------------------------------------------------------------------------
# To Do's:
# ****************************************************************************************************

# Start building the classpath
CLASSPATH="."
CLASSPATH="$CLASSPATH:/Users/patrik/Development/Java/Samael"
#CLASSPATH="$CLASSPATH:/Users/patrik/Development/Java/extLib/javax.activation_1.2.2.v20221203-1659.jar"
#CLASSPATH="$CLASSPATH:/Users/patrik/Development/Java/extLib/javax.mail.jar"
#CLASSPATH="$CLASSPATH:/Users/patrik/Development/Java/extLib/sqlite-jdbc-3.49.1.0.jar"

# Define the program's main class
MAIN_CLASS="MainClass"

# Start the program
java -cp "$CLASSPATH" $MAIN_CLASS

# In case of starting a Jar File
#cd /Users/patrik/bin || exit   # set the active working directory
#java -jar {name}.jar           # start the jar file