#! /bin/bash

usage="
  Usage:  rm-gh-defaults [--help]

  This script potentially deletes the labels that are defined by GitHub as
  defaults.

  - bug
  - duplicate
  - documentation
  - enhancement
  - good first issue
  - help wanted
  - invalid
  - question
  - wontfix

  It will not delete labels, if they are in use (attached to any issue).

  See: https://help.github.com/en/articles/about-labels#using-default-labels

  "
constraints="
   Constraints:
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

for label in "bug" "documentation" "duplicate" "enhancement" "good first issue" "help wanted" "invalid" "question" "wontfix"
do
  echo Label: \""$label"\"
  if ghi list -L "$label" | grep "^None.$" > /dev/null 2>&1
  then
    ghi label -D "$label"
    echo
  else
    echo WARNING: $label is in use - can not be deleted!
    echo Delete it manually with \'ghi label -D \"$label\"\'
    echo
  fi

done
