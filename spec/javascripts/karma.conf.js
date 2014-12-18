module.exports = function(config) {

  config.set({
    basePath: '../..',
    frameworks: ["jasmine"],
    autoWatch: true,
    preprocessors: {
      '**/*.coffee': 'coffee'
    },
    browsers: ['Chrome'],

    files: [
      'vendor/assets/bower_components/angular/angular.js',
      'vendor/assets/bower_components/angular-mocks/angular-mocks.js'
      
    
    ]

  });

};
