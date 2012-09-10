function(arg){
	var ret=[]; 
	for(var i in arg){
		ret.push([i, arg[i]]);
	} 

	return ret;
}
