var connect = require('connect');

module.exports = function(grunt) {

  //serve webpage for development
  grunt.registerTask('deverver', 'start a server to serve static files for development', function() {
    var app = connect(),
        done = this.async();
    grunt.log.writeln('Serving Static Files on port 3000 ctrl-c to exit...');
    process.on('SIGINT', function() {
      grunt.log.writeln('Stopping Server...');
      done();
    });
    app.use(connect.favicon())
            .use(connect.logger())
            .use(connect.static(__dirname + '/'))
            .listen(3000);
  });




  grunt.initConfig({
    pkg: '<json:package.json>',
    server: {
      port: 8000,
      base: '.'
    }
  });   



};
