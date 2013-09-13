Package.describe({
    summary: "privately licensed iosSlider jQuery plugin for use in slider template."
});
Package.on_use(function(api) {
    api.use(['deps',
    'jquery',
    'spark',
    'underscore',
    'handlebars',
    'templating'],
    ['client']
    );

    api.add_files(['lib/jquery.easing-1.3.js',
       'lib/jquery.iosslider.js',
       'slider.css',
       'slider.html',
       'lib/sliderItem.js',
       'lib/sliderLaunch.js',
       'lib/slider.js'], 'client');
});
