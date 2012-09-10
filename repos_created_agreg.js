 
	function(arg){
		// Find min date
		var start = functional.reduce(function(res, inp){ if(new Date(inp[1]) > new Date(res)){ return res; } else { return inp[1];} }, (new Date()).toJSON(), arg);
		// Find max date
		var end = functional.reduce(function(res, inp){ if(new Date(inp[1]) < new Date(res)){ return res; } else { return inp[1];} }, (new Date()).toJSON(), arg);
		
		// Create dates
		var startYr = (new Date(start)).getYear() + 1900;
		var startMt = (new Date(start)).getMonth() + 1; 
		var endYr = (new Date(end)).getYear() + 1900;
		var endMt = (new Date(end)).getMonth() + 1; 
		var dict = {};
		var mt = startMt;

		for(var yr = startYr; yr <= endYr; ++yr){
			for(; mt <= 12; ++mt ){
				dict[ yr + '-' + (mt < 10 ? '0' + mt : mt)  ] = 0;
				
				if(mt == endMt && yr == endYr){
					break;
				}
			}
			mt = 1;
		}

		dict = functional.reduce(function(res, inp){ res[ inp[1].slice(0, 7) ]++; return res; }, dict, arg);
		
		return dict;
	}
