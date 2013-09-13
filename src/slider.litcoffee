Slider Template function
=====
jquery on template render
----


      Template.slider.renderDelayWait = false
      Template.slider.iosSliderPreset = false

      Template.slider.rendered = ()->
        if not Template.slider.renderDelayWait
          Template.slider.renderDelayWait = true
          console.log typeof launchSlider
          Meteor.setTimeout launchSlider, 500
        else
          console.log "skipped iosSlider"
      
        false

      
    
      Template.slider.helpers
        sliderItems: ()->
          tt = ["four", "three"]
          # PageItems.find({template: 'slide'})
      

