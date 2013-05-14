window.SSHomes ?=
  init: ->
    $(document).ready ->
      SSHomes.bootstrap()
          
  bootstrap: ->
    #unless $("body").data("controller") is "home"
    #  $("body").css "background-image", "url('/assets/background_clipped.png')"
    #  $("body").css "background-size", "100% 210px"
      
    if $('section#home .slideshow').length
      SSHomes.slideshow()
      
    if $('.posts').length
      SSHomes.posts()
      
    if $('.testimonials').length
      SSHomes.testimonials()
      
  slideshow: ->
    prev = (element) ->
      slides = $(element).parent().siblings('.slides')
      slides_count = $('img', slides).length
      current_slide = $('img:visible', slides)
      current_slide_index = $('img', slides).index(current_slide)
      if current_slide_index > 0
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(current_slide_index - 1)).fadeIn()
      else
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(slides_count - 1)).fadeIn()
          
    next = (element) ->
      slides = $(element).parent().siblings('.slides')
      slides_count = $('img', slides).length
      current_slide = $('img:visible', slides)
      current_slide_index = $('img', slides).index(current_slide)
      if current_slide_index < slides_count - 1
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(current_slide_index + 1)).fadeIn()
      else
        $(current_slide).fadeOut 400, ->
          $($('img', slides).get(0)).fadeIn()
          
    $('.slideshow a.prev').click (event) ->
      prev(this)
      event.preventDefault()
    
    $('.slideshow a.next').click (event) ->
      next(this)
      event.preventDefault()
      
    slideshow_interval = window.setInterval(->
        next($('.slideshow a.next'))
      , 5000)
      
  posts: ->
    $('.posts a.prev').click (event) ->
      posts = $(this).parent().siblings('.post')
      posts_count = $(posts).length
      current_post = $(this).parent().siblings('.post:visible')
      current_post_index = $(posts).index(current_post)
      if current_post_index  > 0
        $(current_post).fadeOut 400, ->
          new_post = $(posts).get(current_post_index  - 1)
          $('.posts a.more').attr('href', '/posts/' + $(new_post).data('id'))
          $(new_post).fadeIn()
      else
        $(current_post).fadeOut 400, ->
          new_post = $(posts).get(posts_count - 1)
          $('.posts a.more').attr('href', '/posts/' + $(new_post).data('id'))
          $(new_post).fadeIn()
          
      event.preventDefault()
    
    $('.posts a.next').click (event) ->
      posts = $(this).parent().siblings('.post')
      posts_count = $(posts).length
      current_post = $(this).parent().siblings('.post:visible')
      current_post_index = $(posts).index(current_post)
      if current_post_index  < posts_count  - 1
        $(current_post).fadeOut 400, ->
          new_post = $(posts).get(current_post_index + 1)
          $('.posts a.more').attr('href', '/posts/' + $(new_post).data('id'))
          $(new_post).fadeIn()
      else
        $(current_post).fadeOut 400, ->
          new_post = $(posts).get(0)
          $('.posts a.more').attr('href', '/posts/' + $(new_post).data('id'))
          $(new_post).fadeIn()
      
      event.preventDefault()
      
  testimonials: ->
    $('.testimonials a.prev').click (event) ->
      testimonials = $(this).parent().siblings('.testimonial')
      testimonials_count = $(testimonials).length
      current_testimonial = $(this).parent().siblings('.testimonial:visible')
      current_testimonial_index = $(testimonials).index(current_testimonial)
      if current_testimonial_index  > 0
        $(current_testimonial).fadeOut 400, ->
          new_testimonial = $(testimonials).get(current_testimonial_index  - 1)
          $(new_testimonial).fadeIn()
      else
        $(current_testimonial).fadeOut 400, ->
          new_testimonial = $(testimonials).get(testimonials_count - 1)
          $(new_testimonial).fadeIn()
          
      event.preventDefault()
    
    $('.testimonials a.next').click (event) ->
      testimonials= $(this).parent().siblings('.testimonial')
      testimonials_count = $(testimonials).length
      current_testimonial = $(this).parent().siblings('.testimonial:visible')
      current_testimonial_index = $(testimonials).index(current_testimonial)
      if current_testimonial_index  < testimonials_count  - 1
        $(current_testimonial).fadeOut 400, ->
          new_testimonial = $(testimonials).get(current_testimonial_index + 1)
          $(new_testimonial).fadeIn()
      else
        $(current_testimonial).fadeOut 400, ->
          new_testimonial = $(testimonials).get(0)
          $(new_testimonial).fadeIn()
      
      event.preventDefault()
    
SSHomes.init()