#!/bin/sh
#---------------------------------------- MAIN ---------------------------------------#
E_USAGE=64           ##  for a command line usage error
inputFile="Generated_Labels.pdf"
destPathName="Joined_Labels.pdf"
nup="4x5"
#--------------------- OPTIONAL INPUT PARAMS ---------------------#
while [ $# -gt 0 ]; do
  case "$1" in
    -f|--file)
      fileName="$2"
      ;;
    --nup)
      nup="$2"
      ;;
    -o| --output-path)
    destPathName="$2"
      ;;
    *)
      printf "***************************\n"
      printf "* Error: Invalid argument: $1*\n"
      printf "***************************\n"
      exit 1
    
  esac
  shift
  shift
done

exec pdfjam $inputFile --nup $nup --landscape --a4paper --frame true --noautoscale false --delta "0.5cm 1cm" --outfile $destPathName

