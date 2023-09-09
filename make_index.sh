#!/bin/bash

echo "# Posts" > index.md

for post in $(fd -e md -E index.md); do echo \- [${post%.md}]\($post\); done >> index.md
