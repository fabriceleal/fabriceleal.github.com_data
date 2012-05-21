
function(name, setter){
     var output = '';
     fork(
             'curl',
             [ 'https://api.github.com/repos/fabriceleal/' + name + '/languages' ],
             null,
             function(data){
                     output += data;
             },
             null,
             function(code){
                     var data = JSON.parse(output);
                     setter(data);
                     return true;
             });
}
