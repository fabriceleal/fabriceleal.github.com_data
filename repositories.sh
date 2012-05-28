#!/bin/bash

jsoned -m "' _.name '" | jsoned -maf "./detailed_repo_info.js" | jsoned -m "'[ _.name, _.size]'" | jsoned -df "./languages_sort.js"

