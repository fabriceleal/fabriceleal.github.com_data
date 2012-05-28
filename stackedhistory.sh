#!/bin/bash

cat my_repos.json | jsoned -m "' _.name '" | jsoned -maf "./repos_commits.js" | jsoned -s " /* Filter by author */ '1 == 1' " | jsoned -mf "./count_commits.js" | jsoned -df "3arr_to_matrix.js"

