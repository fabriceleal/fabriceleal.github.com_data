/* Re-arranje to match the structure that google wants :| */
function(input, args){
	var ret = {};
	try {

		/* Get list of all the projects */
		ret['projects'] = functional.map('_[0][0]', input);

		var today = new Date();
		var startY = 2011;
		var startM = 8;
		var endY = today.getYear() + 1900;
		var endM = today.getMonth() + 1;

		ret['months'] = [];
	
		var month = startM;
		for(var year = startY; year <= endY; ++year ) {
			for( ;  ; ++month) {

				ret['months'].push(year + '-' + (month < 10 ? '0' + month : month) );

				if(year  === endY && month === endM) break;
				if(month === 12){
					month = 1;
					break;
				}
			}
		}
		//console.log(ret['months']);
		//return;

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
	} catch(e) {
		console.error('Error in 3arr_to_matrix');
		throw e;
	}
}

