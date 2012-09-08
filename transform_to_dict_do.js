function(arg){
	var ret=[]; 
	for(var i in arg){
		ret.push([i, arg[i]]);
	} 

	// ascendent
	return ret.sort(function(a, b){ 
			//console.log(a[0], '>', b[0], '=', a[0] > b[0]); 
			return a[0] > b[0]; 
	});
}
