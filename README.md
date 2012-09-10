## fabriceleal.github.com_data

Scripts for generating .json data files for the charts in my personal page.

This scripts use the github API and my jsoned (https://github.com/fabriceleal/Jsoned) utility for getting and parsing data from github.

## Dependencies
Install jsoned (npm install jsoned -g).

## Usage:

make : create .json files
make clean : clean .json files
make deploy : copy the .json to my personal page dir ;) ... ready to go!

TODO: 
* Unique place to put the user name / date ranges / etc, etc ... 

## Watch out!

The github API uses pagging automatically; I'm assuming that I have no more of 100 entries in number of repositories and 500 commits per
repository (check the files my_repos.sh and repos_commits.js). I must change this to be more "dynamic".

