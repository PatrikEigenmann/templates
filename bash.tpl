#!/bin/bash
# ****************************************************************************************************
# {file_name} - <description>
# ----------------------------------------------------------------------------------------------------
# Author: 	Patrik Eigenmann
# eMail: 	p.eigenmann@gmx.net
# GitHub: 	www.github.com/PatrikEigenmann/bash
# ----------------------------------------------------------------------------------------------------
# Change Log:
# DAY YYYY-MM-DD File created.															Version: 00.01
# ----------------------------------------------------------------------------------------------------
# To Do's:
# ****************************************************************************************************

display_help() {
	echo "NAME:"
	echo "     <name>.sh - Version: 00.01"
	echo " "
	echo "SYNOPSIS:"
	echo "     <name>.sh <options: > <param2> <param3> ..."
	echo " "
	echo "DESCRIPTION:"
	echo "     <option 1>"
	echo "         Option description!"
	echo " "
	echo "AUTHOR:"
	echo "     Written by Patrik Eigenmann. My email is p.eigenmann@gmx.net"
	echo " "
	echo "COPYRIGHT:"
	echo "     Copyright © 2023 Free Software Foundation, Inc. This software is under the GPLv3+ license."
	echo "     GNU GPL version 3 or later https://gnu.org/licenses/gpl.html."
}

x=1
option=""

for p in $@
do
	if [ $X -eq 1 ]; then
		option="$p"
	fi

	x=(( x + 1 ))
done

# ------------------
# Call Help
# ------------------
if [ $option = "-?" ]; then
	display_help()
fi
