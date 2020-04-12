#!/usr/bin/env bash


# Functions are easily defined in a way similar to the way
# they are declared in most other programming languages.
# The functions are local to the context of the script in
# which they are declared or from which they are executed.
function an_empty_function() {
  ::  # you can't just leave it empty, use :: to fill it in..
}

# You can use one of multiple different syntaxes to declare
# functions within Bash scripts.
function one_function() {
  GLOBAL_VAR="variable global to this script"
  local LOCAL_VAR="variable local to this function."
}

another_function() {
  GLOBAL_VAR="variable global to this script"
  local LOCAL_VAR="variable local to this function."
}

# ...and to execute the functions, you can
# run them just like any other Bash command.
one_function
another_function


# -------------------------------------


using_function_arguments() {
  # function arguments are identical to script arguments.
  ARGS=$@

  # ...or
  ARG_ONE=$1
  ARG_TWO=$2
  ARG_THREE=$3
  ARG_FOUR=$4

  # Individual arguments can also be thrown out, moving
  # each remaining argument up a single position in the list.
  # This is accomplished using the 'shift' command.
  shift

  ARG_SIX=$5  # $5 contains what was previously in $6
}

# Note that because function declarations do not explicitly specificy
# parameters with their declarations, arity is not enforced in
# Bash functions and no exceptions are thrown as a result.
using_function_arguments one two three four five six seven eight nine ten


# -------------------------------------


# returning values often uses global variables but this is not always
# good form so function output is returned via STDOUT, Standard Output.
function_that_returns_a_value() {
  echo "this string is discretely returned."
}

# prints output to STDOUT
function_that_returns_a_value

# saves output to OUTPUT variable, then prints it.
OUTPUT=$( function_that_returns_a_value )
echo $OUTPUT

# Note that $( ... ) can be used to redirect output
# from commands to a variable or what-have-you. spaces
# can be added arbitrarily within the parentheses.
