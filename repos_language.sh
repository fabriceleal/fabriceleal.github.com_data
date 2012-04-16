#!/bin/bash

cat my_repos.json | ../jed/jed.js -m " '_.language' " | ../jed/jed.js -r "
	function(res, input){
		if(input == null){
			input = \"unknown\";
		}
		res[input] = (res[input] ? res[input] : 0) + 1;
		
		return res;
	}
" "{}" | ../jed/jed.js -do "function(arg){var ret=[]; for(var i in arg){ ret.push([i, arg[i]]);} return ret; }"
