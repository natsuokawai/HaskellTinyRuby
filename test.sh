#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  actual=`./App/Main $input`

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

stack exec ghc App/Main.hs
echo

assert 0 0
assert 42 42

echo OK