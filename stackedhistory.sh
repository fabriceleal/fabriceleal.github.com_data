#!/bin/bash

cat my_repos.json | ../jed/jed.js -m "' _.name '" | ../jed/jed.js -maf "./repos_commits.js" | ../jed/jed.js -s " /* Filter by author */ '1 == 1' " | ../jed/jed.js -mf "./count_commits.js" | ../jed/jed.js -df "3arr_to_matrix.js"

