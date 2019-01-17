#!/bin/bash

echo $(yay -Qu 2> /dev/null | wc -l)

