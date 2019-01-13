#! /bin/bash

usage="
  Usage:  rm-gh-defaults [--help]

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


rm-label()
{
  label=$1
  echo Label: \""$label"\"
  if in-use "$label"
  then
    echo WARNING: $label is in use - can not be deleted!
    echo Delete it manually with \'ghi label -D \"$label\"\'
    echo
  else
    ghi label -D "$label"
    echo
  fi
}

in-use()
{
  label=$1
  if ghi list -L "$label" | grep "^None.$" > /dev/null 2>&1
  then
    return 1
  else
    return 0
  fi
}

for label in "bug" "duplicate" "enhancement" "good first issue" "help wanted" "invalid" "question" "wontfix"
do
  rm-label "$label"
done
