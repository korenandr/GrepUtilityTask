#!/bin/bash

# Trigger an error if non-zero exit code is encountered
set -e

# Decide what is to replace this process
if [ "${1}" == "--launch-tests" ]; then
    exec ctest --test-dir ./build/test --verbose
else
    # An unknown command (debugging the container?): Forward as is
    exec GrepUtility "${@}"
fi