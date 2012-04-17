#!/bin/bash

../jed/jed.js -m " '_.language' " | ../jed/jed.js -r "
	function(res, input){
		if(input == null){
			input = \"unknown\";
		}
		res[input] = (res[input] ? res[input] : 0) + 1;
		
		return res;
	}
" "{}" | ./transform_to_dict.sh
