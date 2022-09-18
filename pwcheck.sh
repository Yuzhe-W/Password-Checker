#!/bin/bash

#DO NOT REMOVE THE FOLLOWING LINES
git add $0 >> .local.git.out
git commit -a -m "Lab 2 commit" >> .local.git.out
git push >> .local.git.out || echo


#Code Part
point=0
psw=$(head -n 1 "$1") 
len=${#psw}

if [ $len -lt 6 ] || [ $len -gt 32 ]; then
  echo "Error: Password length invalid."
  exit
fi

if egrep -q [_] $1;then
  echo "Error: Password contains unrecoginzed symbol, such as _"
else
  point=$len*1
  if egrep -q [#$+%@] $1; then
    point=$((point + 5))
  fi

  if egrep -q [0-9] $1; then
    point=$((point + 5))
  fi

  if egrep -q [A-Za-z] $1; then
    point=$((point + 5))
  fi

  if egrep -q "([0-9A-Za-z])\1+" $1; then
    point=$((point - 10))
  fi

  if egrep -q "([a-z]){3,}" $1;then
    point=$((point - 3))
  fi

  if egrep -q "([A-Z]){3,}" $1;then
    point=$((point - 3))
  fi

  if egrep -q "([0-9]){3,}" $1;then
    point=$((point - 3))
  fi

  echo "Password Score: $point"
fi

