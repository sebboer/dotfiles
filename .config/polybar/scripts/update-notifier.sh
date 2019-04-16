#!/bin/bash

echo "$(yay -Qu --repo > /dev/null | wc -l) | $(yay -Qu --aur > /dev/null | wc -l)"

