ready = ->
  Typed.new '.element',
    strings: [
      'Thanks for visiting my website.'
      "Please browse through my portfolio and blog to learn more about me."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
