#!/usr/bin/env bash

# one-liner to convert ASN to ip addresses. Results will be appended to `ips.out`. sander@cedsys.nl | 1-7-2017
# Requires: sudo apt install prips httprobe

# Added to the original script.
FILE=""
OUTPUTFILE=""

usage() {  # Function: Print a help message.
  echo "Usage: $0 [ -f FILE OF ranges to get IP addresses of ] [ -o OUTPUT FILE ] [ -h HELP ]" 1>&2
}

exit_abnormal() { # Function: Exit with error.
  usage
  echo "---------------"
  echo "Exiting!"
  exit 1
}

 while getopts "f:o:h" opt
 do
	 case ${opt} in
		f)
			echo "Range file: ${OPTARG}"
			FILE="${OPTARG}"
			;;
		o)
			echo "Final output file: ${OPTARG}"
			OUTPUTFILE="${OPTARG}"
			;;
		h)
			exit_abnormal
			;;
	esac
done

# Check if the arguments were inputted
if [[ -z "$FILE" || -z "$OUTPUTFILE" ]]
then
	echo "[!] Not all required arugments were supplied"
	echo "---------------"
	exit_abnormal
	exit
fi

while IFS= read -r range # Read file line by line
do
	prips "$range" | tee -a "$OUTPUTFILE"
done < "$FILE"
