#!/bin/bash


../jed/jed.js -m "'[ _.name, _.created_at ]'" | ../jed/jed.js -do " 
	function(arg){
		var start = functional.reduce(function(res, inp){ if(new Date(inp[1]) > new Date(res)){ return res; } else { return inp[1];} }, (new Date()).toJSON(), arg);
		var end = functional.reduce(function(res, inp){ if(new Date(inp[1]) < new Date(res)){ return res; } else { return inp[1];} }, (new Date()).toJSON(), arg);
		//console.log(start);
		//console.log(end);
		
		// Create dates
		var startYr = (new Date(start)).getYear() + 1900;
		var startMt = (new Date(start)).getMonth(); 
		var endYr = (new Date(end)).getYear() + 1900;
		var endMt = (new Date(end)).getMonth(); 
		var dict = {};
		var mt = startMt;

		console.log(startYr);
		console.log(startMt);
		console.log(endYr);
		console.log(endMt);
		//return null;

		for(var yr = startYr; yr <= endYr; ++yr){
			for(; mt <= 12; mt = mt + 1 ){

				dict[ (new Date(yr, mt)).toJSON().slice(0, 7)  ] = 0;

				//console.log( (new Date(yr, mt)).toJSON().slice(0, 7) );
				//console.log(yr);
				//console.log(mt);

				
				if(mt == endMt && yr == endYr){
					yr = 9999; // This will break the external for
					mt = 9999; // Break this for	
				}
				//console.log(mt);
			}
			mt = 0;
			//console.log(yr);
		}

		dict = functional.reduce(function(res, inp){ res[ inp[1].slice(0, 7) ]++; return res; }, dict, arg);
		
		return dict;
	}"

