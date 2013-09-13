Package.describe({
    summary: "privately licensed iosSlider jQuery plugin for use in slider template."
});
Package.on_use(function(api) {
    api.use(['deps',
    'jquery',
    'spark',
    'underscore',
    'handlebars',
    'templating',
    'coffeescript'],
    ['client', 'server']
    );

    api.add_files(['jquery.easing-1.3.js',
       'jquery.iosslider.js',
       'slider.css',
       'slider.html',
       'sliderItem.litcoffee',
       'sliderLaunch.litcoffee',
       'slider.litcoffee'], 'client');
});
