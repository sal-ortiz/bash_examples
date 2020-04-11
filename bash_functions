#!/usr/bin/env bash


function an_empty_function() {
  ::  # you can't just leave it empty, use :: to fill it in..
}

# You can use one of multiple different
# syntaxes to declare a Bash function...
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
}

using_function_arguments one two three


# -------------------------------------


# returning values often uses global variables but this is not always
# good form so function output is returned via STDOUT, Standard Output.
function_that_returns_a_value() {
  echo "this string is discretely returned."
}

# prints output to STDOUT
function_that_returns_a_value

# saves output to $OUTPUT, then prints $OUTPUT.
OUTPUT=$( function_that_returns_a_value )
echo $OUTPUT
