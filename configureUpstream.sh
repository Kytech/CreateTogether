#!/bin/bash

# Add upstream repository
if ! git remote | grep -q "upstream$"; then
    git remote add upstream https://github.com/NillerMedDild/CreateTogether.git
fi

# Configure normalization on merge to keep line endings consistent

if ! git config --local --get merge.renormalize > /dev/null || [ $(git config --local --get merge.renormalize) = "false" ] ; then
    git config --local merge.renormalize true
fi
