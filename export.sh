#!/bin/bash
usage() { echo "Usage: $0 -s path-to-source-svg [-d path-to-destination] size1 [size2...]" 1>&2; exit 1; }
if [ "$#" -eq 0 ]; then
    usage
fi
while getopts ":s:d:" o; do
    case "${o}" in
        s)
            s=${OPTARG} || usage
            ;;
        d)
            d=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${d}" ]; then
    d=${d} || ${s}
fi

for x in "$@"; do
 if [ "${x}" -eq "${x}" ]; then
  inkscape --export-png ${d}${x}.png -w ${x} ${s}
 fi
done
