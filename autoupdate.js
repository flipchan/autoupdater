// USAGE ------
// ============

var shell = require('./shellHelper');

//sleep(5)
// runs the python update file
shell.exec('python update.py', function(err){  
    console.log('executed test');
});