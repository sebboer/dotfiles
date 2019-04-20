#!/bin/bash

echo "$(yay -Qu --repo 2> /dev/null | wc -l) | $(yay -Qu --aur 2> /dev/null | wc -l)"

