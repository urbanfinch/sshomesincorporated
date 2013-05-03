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
      
    if $('.posts').length
      SSHomes.posts()
      
  slideshow: ->
    $('.slideshow a.prev').click (event) ->
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
    
    $('.slideshow a.next').click (event) ->
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
      
  posts: ->
    $('.posts a.prev').click (event) ->
      posts = $(this).parent().siblings('.post')
      posts_count = $(posts).length
      current_post = $(this).parent().siblings('.post:visible')
      current_post_index = $(posts).index(current_post)
      if current_post_index  > 0
        $(current_post).fadeOut 400, ->
          $($(posts).get(current_post_index  - 1)).fadeIn()
      else
        $(current_post).fadeOut 400, ->
          $($(posts).get(posts_count - 1)).fadeIn()
          
      event.preventDefault()
    
    $('.posts a.next').click (event) ->
      posts = $(this).parent().siblings('.post')
      posts_count = $(posts).length
      current_post = $(this).parent().siblings('.post:visible')
      current_post_index = $(posts).index(current_post)
      if current_post_index  < posts_count  - 1
        $(current_post).fadeOut 400, ->
          $($(posts).get(current_post_index + 1)).fadeIn()
      else
        $(current_post).fadeOut 400, ->
          $($(posts).get(0)).fadeIn()
      
      event.preventDefault()
      
SSHomes.init()