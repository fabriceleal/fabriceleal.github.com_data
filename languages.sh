#!/bin/bash

../jed/jed.js -m "' _.name '" | ../jed/jed.js -ma "./languages_repos_langs.js" | ../jed/jed.js -rf "./languages_sum.js" -i "{}" | ../jed/jed.js -rf "languages_dict_to_arr.js" -i "[]" | ../jed/jed.js -df "./languages_sort.js"
