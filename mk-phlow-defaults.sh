#! /bin/bash

usage="
  Usage:  mk-phlow-defaults [--help] [--clean]

  "
constraints="
   This script uses the GitHub Issues command line interface 'ghi'
   Install details at https://github.com/stephencelis/ghi
"

if [ "$1" == "--help" ]
then
  printf "%s\n" "$usage" "Constraints\:" "$constraints"
  exit 0
fi

ghi --version
if [ $? != 0 ]
then
  printf "%s\n" "" "Oooooooh, SNAP! Auch" "$constraints"
  exit $?
fi


# Create the labels using ghi
ghi label "Action - awaiting feed-back" -c 6EB82C
ghi label "Action - needs grooming"     -c 009800
ghi label "Briefing"                    -c C7DEF8
ghi label "Prio 1 - must have"          -c E83D0F
ghi label "Prio 2 - should have"        -c EB6420
ghi label "Prio 3 - could have"         -c E8850F
ghi label "Prio 4 - won't have"         -c E8A80F
ghi label "Size 1 - small"              -c 20B4E5
ghi label "Size 2 - medium"             -c 208FE5
ghi label "Size 3 - large"              -c 0052CC
ghi label "Size 4 - too big"            -c 100B6B
ghi label "Status - duplicate"          -c 111111
ghi label "Status - to do"              -c EDEDED
ghi label "Status - in progress"        -c EDEDED
ghi label "Status - up next"            -c EEEEEE
ghi label "Tech-challenge"              -c 5319E7
