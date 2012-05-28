#!/bin/bash


jsoned -m "'[ _.name, _.created_at ]'" | jsoned -df "./repos_created_agreg.js" | ./transform_to_dict.sh


