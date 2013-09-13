// Generated by CoffeeScript 1.6.3
(function() {
  this.slideComplete = function(args) {
    if (!args.slideChanged) {
      return false;
    }
    $(args.sliderObject).find('.text1, .text2').attr('style', '');
    return $(args.currentSlideObject).find('.text1').animate({
      right: '200px',
      opacity: '0.8'
    }, 400, 'easeOutQuint');
  };

  $(args.currentSlideObject).find('.text2').animate({
    right: '50px',
    opacity: '0.8'
  }, 1800, 'easeOutQuint');

  this.slideChange = function(args) {
    var n;
    n = args.currentSlideNumber - 1;
    $('.sliderContainer .slideSelectors .item').removeClass('selected');
    return $('.sliderContainer .slideSelectors .item:eq(' + n + ')').addClass('selected');
  };

  this.sliderLoaded = function(args) {
    $(args.sliderObject).find('.text1, .text2').attr('style', '');
    return $(args.currentSlideObject).find('.text1').animate({
      right: '200px',
      opacity: '0.8'
    }, 400, 'easeOutQuint');
  };

  $(args.currentSlideObject).find('.text2').delay(200).animate({
    right: '50px',
    opacity: '0.8'
  }, 400, 'easeOutQuint');

}).call(this);