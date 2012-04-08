

module.exports = function(grunt) {
  grunt.initConfig({
    pkg: '<json:package.json>',
    server: {
      port: 8000,
      base: '.'
    }
  });   
};
