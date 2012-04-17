#!/bin/bash



../jed/jed.js -m "' _.name '" | ../jed/jed.js -ma "
	function(name, setter){
        var output = '';
        fork(
                'curl',
                [ 'https://api.github.com/repos/fabriceleal/' + name ],
                null,
                function(data){
                        output += data;
                },
                null,
                function(code){
                        var data = JSON.parse(output);
                        setter(data);
                        return true;
                });
  }" | ../jed/jed.js -m "'[ _.name, _.size]'" | ../jed/jed.js -do "
	function(obj, args){
		obj.sort(function (a1, a2){
			// Order by codebase size, the second subscript of the element
			return a2[1] - a1[1];
		});
		return obj;
	}	"


