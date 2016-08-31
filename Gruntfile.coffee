module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-angular-templates'

  config =
    dirs:
      src:
        root: 'src'
        app: 'src/app'
        content: 'src/content'
      dist:
        root: 'dist'
      tmp:
        root: '.tmp'
        compiled: '.tmp/compiled'


    globs:
      module: "**/*.module.coffee"
      coffee: "**/*.coffee"
      html: "**/*.html"
      nonhtml: '**/*.{js,css,jpg,jpeg,gif,png,eot,ttf,woff,svg,woff2}'
      images: '**/*.{png,jpg,jpeg,gif,webp,svg}'
      resources: '*.{jpg,jpeg,gif,png,eot,ttf,woff,svg,woff2}'
      sass: ['**/*.{scss,sass,css}', '!**/_*.{scss,sass}']


    clean:
      build: ['<%= dirs.tmp.root %>']


    connect:
      options:
        port:5000
        hostname: '0.0.0.0'
      serve:
        options:
          open:true
          base: [
            '<%= dirs.tmp.compiled %>'
            '<%= dirs.src.content %>'
            '<%= dirs.src.app %>'
            'bower_components'
          ]


    coffee:
      compile:
        options:
          join: true
        files:
          '<%= dirs.tmp.compiled %>/app.js': ['<%= dirs.src.app %>/<%= globs.module %>','<%= dirs.src.app %>/<%= globs.coffee %>']

          
    sass:
      compile:
        files:
          '<%= dirs.tmp.compiled %>/style.css': '<%= dirs.src.app %>/style.scss'
             


    watch:
      js:
        files: [
          '<%= dirs.src.app %>/<%= globs.coffee %>'
          '<%= dirs.src.app %>/<%= globs.html %>'
          '<%= dirs.src.app %>/**/*.scss'
        ]
        tasks: ['build']
  
  

    ngtemplates:
      options:
        module: "gurpscc"
      build:
        cwd: '<%= dirs.src.app %>'
        src: '<%= globs.html %>'
        dest: '<%= dirs.tmp.compiled %>/templates.js'

  grunt.initConfig config

  grunt.registerTask 'default', ['serve']
  grunt.registerTask 'build', ['clean:build', 'coffee:compile', 'ngtemplates:build','sass:compile']
  grunt.registerTask 'serve', ['build', 'connect:serve', 'watch:js']
