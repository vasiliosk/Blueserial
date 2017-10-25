################################################################################
#
#	install.sh
#	
#	This script is used for installing the blueserial.sh script.
#
################################################################################
#!/bin/sh

#	Script to be copied.
scriptname="blueserial.sh"
#	Name of the program. This is what will be used from the terminal to run it.
PROG_NAME="blueserial"
#	Directory from which the script wil execute. If you would like it to run
#	from a different directory, just change the path below.
execut_dir="/usr/sbin"
#	Get the name of the user running this script.
USR_NAME=$(echo $USER)

case ${USR_NAME} in
	root) break ;;
	*)	echo ""
		echo  " ${USR_NAME}:  Please execute the script using 'sudo'"
		echo ""
		echo " example: 'sudo '"
		exit 0	;;
	esac	#	end switch

sh -c "cp ${scriptname} ${execut_dir}/${PROG_NAME}"
sh -c "chown root:root ${execut_dir}/${PROG_NAME}"
sh -c "chmod +x ${execut_dir}/${PROG_NAME}"

ls -l ${execut_dir}/${PROG_NAME}

echo "Done."

exit 0
################################################################################
