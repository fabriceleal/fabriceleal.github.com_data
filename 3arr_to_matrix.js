/* Re-arranje to match the structure that google wants :| */
function(input, args){
	var ret = {};

	/* Get list of all the projects */
	ret['projects'] = functional.map('_[0][0]', input);

	// TODO Make this dynamic! >:(
	ret['months'] = ['2011-08', '2011-09', '2011-10', '2011-11', '2011-12', '2012-01', '2012-02', '2012-03', '2012-04', '2012-05', '2012-06', '2012-07'];

	ret['data'] = new Array(ret['projects'].length);
	
	/* Each row -> project, Each column -> month */
	/* Compute final matrix */

	for(var i in input){
		for(var j in input[i]){
			var proj = input[i][j][0];
			var month = input[i][j][1];
			var value = input[i][j][2];
			
			if(null == ret['data'][ ret['projects'].indexOf(proj) ]){
				/* Creates array, inits to zero */
				ret['data'][ ret['projects'].indexOf(proj) ] = functional.map(' 0 ', new Array(ret['months'].length)); 
			}

			ret['data'][ ret['projects'].indexOf(proj) ][ ret['months'].indexOf(month) ] = value;
		}				
	}

	return ret;
}

