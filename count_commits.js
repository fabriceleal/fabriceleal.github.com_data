/* Transform. For each element, count the nbr of commits */
function(x){ 
	try{
		var ret = [];
		var repo = x.repo;
		var times = [];
	
	
		times = functional.reduce(function(res, input){
				var idx = input.commit.committer.date.slice(0, 7) ;
				times[ idx ] = (times[ idx ] ? times[ idx ] : 0 ) + 1;

				return times;
			}, times, x.commits);

		for(var i in times){
			ret.push([repo, i, times[i]]);
		}
		// We need the index, so we can't translate this immediately to a map'ing

		return ret;
	}catch(e){
		console.error('Error on count_commits');
		throw e;
	}
} 

