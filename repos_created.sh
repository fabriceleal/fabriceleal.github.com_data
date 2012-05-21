#!/bin/bash


../jed/jed.js -m "'[ _.name, _.created_at ]'" | ../jed/jed.js -df "./repos_created_agreg.js" | ./transform_to_dict.sh


