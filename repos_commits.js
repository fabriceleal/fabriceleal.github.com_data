/* Get list of commits for each personal repository */
function(name, setter){
     var output = '';
     fork(
             'curl',
             [ 'https://api.github.com/repos/fabriceleal/' + name + '/commits?per_page=500' ],
             null,
             function(data){
							try {
                     	output += data;
							} catch(e) {
								console.error("Error cat'ing output of process");
								throw e;
							}
             },
             null,
             function(code){
						try {
                     var data = JSON.parse(output);
                     setter({
								'repo' : name,
								'commits': data});
                     return true;
						} catch(e) {
							console.error('Error parsing output of process to object');
							throw e;
						}
             });
}
