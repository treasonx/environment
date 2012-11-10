/**
 * Grunt tasks to automate daily tasks
 *
 */

module.exports = function (grunt) {
  'use strict';

  grunt.initConfig({
    reload: {
      port: 35729, // LR default
      liveReload: {},
      proxy: {
        host: 'localhost'
      }
    },
    markdown: {
      //Markdown task for notes
      notes: {
        files: ['Dropbox/Notes/*.md'],
        dest: 'Dropbox/HTMLNotes',
        options: {
          gfm: true,
          highlight: 'manual'
        }
      }
    },
    server: {
      //TODO server does not seem to be a multitask
      notes: {
        port: 8000,
        base: '~/Dropbox/HTMLNotes'
      }
    },
    watch: {
      //Watch my notes and if they change reload
      notes: {
        files: ['Dropbox/Notes/*.md'],
        tasks: 'markdown:notes reload'
      }
    }
  });

  //Awesome markdown task with code highlight
  grunt.loadNpmTasks('grunt-markdown');

  //Live reload with chrome extension
  grunt.loadNpmTasks('grunt-reload');

  //Watch notes and reload preview
  grunt.registerTask('previewNotes', 'When mardown notes change reload preview',
    'markdown:notes server:notes watch:notes');

  grunt.registerTask('noop', 'do nothing', function() {
    console.log('NOPE!');
  });

  //Do nothing
  grunt.registerTask('default', 'noop');
};
