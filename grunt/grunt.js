/**
 * Grunt tasks to automate daily tasks
 *
 */

module.exports = function (grunt) {
  'use strict';

  grunt.initConfig({
  });


  grunt.registerTask('noop', 'do nothing', function() {
    console.log('NOPE!');
  });

  //Do nothing
  grunt.registerTask('default', 'noop');
};

