
module.exports = function (grunt) {
  'use strict';
  grunt.initConfig({
    markdown: {
      notes: {
        files: ['~/Dropbox/Notes/*.md'],
        dest: '~/Dropbox/HTMLNotes',
        options: {
          gfm: true,
          highlight: 'manual'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-markdown');
};
