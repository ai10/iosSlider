Slider Launch attaches the iosSlider to the dom
===
slideComplete 
---


      @slideComplete = (args) ->
          if not args.slideChanged then return false
          $(args.sliderObject).find('.text1, .text2').attr('style', '')
          $(args.currentSlideObject).find('.text1').animate({
                  right: '200px'
                  opacity: '0.8'
            }, 400, 'easeOutQuint')

          $(args.currentSlideObject).find('.text2').animate({
                  right: '50px'
                  opacity: '0.8'
            }, 1800, 'easeOutQuint')

slideChange
---


      @slideChange = (args) ->
          n = args.currentSlideNumber-1
          $('.sliderContainer .slideSelectors .item').removeClass('selected')
          $('.sliderContainer .slideSelectors .item:eq('+n+')').addClass('selected')

      @sliderLoaded = (args) ->
          $(args.sliderObject).find('.text1, .text2').attr('style', '')
          $(args.currentSlideObject).find('.text1').animate({
                right: '200px'
                opacity: '0.8'
            }, 400, 'easeOutQuint')
          $(args.currentSlideObject).find('.text2').delay(200).animate({
                right: '50px'
                opacity: '0.8'
           }, 400, 'easeOutQuint')
          slideChange(args)


launchSlider
---



      @launchSlider = ()->
          if Template.slider.iosSliderPreset is true then  $('.iosSlider').iosSlider 'destroy'
          $('.iosSlider').iosSlider(
              snapToChildren: true
              desktopClickDrag: true
              infiniteSlider: true
              navSlideSelector: '.sliderContainer .slideSelectors .item'
              keyboardControls: true
              onSlideComplete: slideComplete
              onSliderLoaded: sliderLoaded
              onSlideChange: slideChange
              autoSlide: true
              scrollbar: true
              scrollbarContainer: '.sliderContainer .scrollbarContainer'
              navPrevSelector: '.prevButton'
              navNextSelector: '.nextButton'
             )
          Template.slider.iosSliderPreset = true
          Template.slider.renderDelayWait = false
