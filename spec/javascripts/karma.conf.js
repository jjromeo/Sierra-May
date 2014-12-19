module.exports = function(config) {

  config.set({
    basePath: '../..',
    frameworks: ["jasmine"],
    autoWatch: true,
    preprocessors: {
      '**/*.coffee': 'coffee'
    },
    browsers: ['Chrome'],

    plugins: [
      'karma-chrome-launcher',
      'karma-jasmine',
      'karma-coffee-preprocessor'
    ],

    files: [
      'vendor/assets/bower_components/angular/angular.js',
      'vendor/assets/bower_components/angular-mocks/angular-mocks.js',
      'app/assets/javascripts/angular/main.js.coffee',
      'spec/javascripts/*_spec.js.coffee'
    ]

  });

};
