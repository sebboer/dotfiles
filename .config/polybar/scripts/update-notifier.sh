#!/bin/bash

echo "$(yay -Qu --repo | wc -l) | $(yay -Qu --aur | wc -l)"

