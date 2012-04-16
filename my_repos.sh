#!/bin/bash

curl "https://api.github.com/users/fabriceleal/repos" | ../jed/jed.js -s "'_.fork == false'"

