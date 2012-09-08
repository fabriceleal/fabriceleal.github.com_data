function(arg){
	var ret=[]; 
	for(var i in arg){
		ret.push([i, arg[i]]);
	} 
	// ascendent
	return ret.sort(function(a, b){ return a > b; }); 
}
