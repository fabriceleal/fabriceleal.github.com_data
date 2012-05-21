#!/bin/bash

cat my_repos.json | ../jed/jed.js -m " '_.language' " | ../jed/jed.js -rf "./count.js" -i "{}" | ./transform_to_dict.sh

