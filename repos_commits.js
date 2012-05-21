/* Get list of commits for each personal repository */
function(name, setter){
     var output = '';
     fork(
             'curl',
             [ 'https://api.github.com/repos/fabriceleal/' + name + '/commits' ],
             null,
             function(data){
                     output += data;
             },
             null,
             function(code){
                     var data = JSON.parse(output);
                     setter({
								'repo' : name,
								'commits': data});
                     return true;
             });
}
