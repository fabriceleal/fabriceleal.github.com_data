#!/bin/bash

curl "https://api.github.com/users/fabriceleal/repos?per_page=100" | jsoned -s "'_.fork == false'"

