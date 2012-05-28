#!/bin/bash

curl "https://api.github.com/users/fabriceleal/repos" | jsoned -s "'_.fork == false'"

