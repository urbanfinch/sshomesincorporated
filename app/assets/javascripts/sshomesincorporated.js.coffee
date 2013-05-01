window.SSHomes ?=
  init: ->
    $(document).ready ->
      SSHomes.bootstrap()
          
  bootstrap: ->
    unless $("body").data("controller") is "home"
      $("body").css "background-image", "url('/assets/background_clipped.png')"
      $("body").css "background-size", "100% 210px"
      
    if $('.slideshow').length
      SSHomes.slideshow()
      
  slideshow: ->
    $('a.prev').click (event) ->
      slides = $(this).parent().siblings('.slides')
      slides_count = $('img', slides).length
      current_slide = $('img:visible', slides)
      current_slide_index = $('img', slides).index(current_slide)
      if current_slide_index > 0
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(current_slide_index - 1)).fadeIn()
      else
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(slides_count - 1)).fadeIn()
          
      event.preventDefault()
    
    $('a.next').click (event) ->
      slides = $(this).parent().siblings('.slides')
      slides_count = $('img', slides).length
      current_slide = $('img:visible', slides)
      current_slide_index = $('img', slides).index(current_slide)
      if current_slide_index < slides_count - 1
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(current_slide_index + 1)).fadeIn()
      else
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(0)).fadeIn()
      
      event.preventDefault()
      
SSHomes.init()