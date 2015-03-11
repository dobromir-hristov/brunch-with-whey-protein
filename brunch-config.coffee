exports.config =
  # See http://brunch.io/#documentation for docs.
  modules:
  	definition: false
  	wrapper: false

  sourceMaps: false

  optimize: true
  files:
    javascripts:
      joinTo:
      	'js/app.js' : /^app/
      	'js/vendor.js' : /^(vendor|bower_components)/
      order:
        before: [
          'bower_components/modernizr/modernizr.js',
          'bower_components/jquery/jquery.js'
        ]

    stylesheets:
      joinTo:
      	'css/app.css' : /^(app|bower_components)/
  plugins:
    sass:
      debug: false
      mode: 'native'
      options:
        includePaths: [
          'bower_components/bourbon/'
        ]

