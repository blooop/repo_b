#!/bin/bash

find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' \) -print0 | xargs -0 sed -i "s/repo_b/$1/g"

mv repo_b $1