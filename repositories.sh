#!/bin/bash



../jed/jed.js -m "' _.name '" | ../jed/jed.js -maf "./detailed_repo_info.js" | ../jed/jed.js -m "'[ _.name, _.size]'" | ../jed/jed.js -df "./languages_sort.js"


