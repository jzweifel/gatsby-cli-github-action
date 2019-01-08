#!/bin/sh -l

if [ -n "$GATSBY_PROJECT_PATH" ]; then
  PREV_PATH=$(pwd)
  # Allow user to change directories in which to run Gatsby commands
  cd "$GATSBY_PROJECT_PATH" || exit
fi

sh -c "gatsby $*"
ACTUAL_EXIT="$?"

if [ -n "$PREV_PATH" ]; then
  # If we changed directories before, we should go back to where we were.
  cd "$PREV_PATH" || exit
fi

exit $ACTUAL_EXIT
