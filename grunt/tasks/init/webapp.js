
exports.description = 'Create a web application, including jasmins unit tests.';

exports.notes = ' _Project name_ is a web application that uses knockoutjs, underscorejs, and jQuery.';

exports.warnOn = '*';

exports.template = function(grunt, init, done) {
  
  grunt.helper('prompt', {type: 'webapp'}, [
    grunt.helper('prompt_for', 'name'),
    grunt.helper('prompt_for', 'description'),
    grunt.helper('prompt_for', 'version'),
    grunt.helper('prompt_for', 'repository'),
    grunt.helper('prompt_for', 'author_name'),
    grunt.helper('prompt_for', 'author_email'),
    grunt.helper('prompt_for', 'licenses', 'MIT GPL')
  ], function (err, props) {
    var files = init.filesToCopy(props);

    init.addLicenseFiles(files, props.licenses);

    init.copyAndProcess(files, props, {noProcess: 'js/libs/**'});
    
    init.writePackageJSON('package.json', props);

    done();
  });
  
  
  
};
