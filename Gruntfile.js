module.exports = function(grunt){

grunt.initConfig({
  pkg: grunt.file.readJSON('package.json'),
  uglify :{
      callwhat :{
        files:{
          'public/dist/main.min.js':['public/javascripts/main.js']

        }
      }
  }
  concat: {
    dist: {

    }
  }
  watch:{
    sass:{
      files:['sass/*.scss'],
      tasks: ['sass']
    }
  }
  sass: {
    dist:{
      options:{
        style: 'compressed'
      },
      files: {
        'public/stylesheets/style.css':'sass/master.scss'
      }
    }
  }
});

grunt.loadNpmTasks('grunt-contrib-uglify');
grunt.loadNpmTasks('grunt-contrib-concat');
grunt.loadNpmTasks('grunt-contrib-watch');
grunt.loadNpmTasks('grunt-contrib-sass');

grunt.registerTask('default', ['uglify','sass']);
grunt.registerTask('watchFiles',['watch','sass']);
};
