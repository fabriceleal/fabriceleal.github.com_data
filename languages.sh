#!/bin/bash

jsoned -m "' _.name '" | jsoned -maf "./languages_repos_langs.js" | jsoned -rf "./languages_sum.js" -i "{}" | jsoned -rf "languages_dict_to_arr.js" -i "[]" | jsoned -df "./languages_sort.js"
