
function(res, input){
	if(input == null){
		input = \"unknown\";
	}
	res[input] = (res[input] ? res[input] : 0) + 1;
	
	return res;
}

