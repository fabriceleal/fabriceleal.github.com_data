#!/bin/bash

cat my_repos.json | jsoned -m " '_.language' " | jsoned -rf "./count.js" -i "{}" | ./transform_to_dict.sh

