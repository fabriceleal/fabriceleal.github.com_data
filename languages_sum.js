
function(res, input){ 
	if(input){
		for(var i in input){
			if(input[i]){
				res[i] = input[i] + (res[i]? res[i]: 0); 
			} 
		} 
	} 
	return res;
} 
