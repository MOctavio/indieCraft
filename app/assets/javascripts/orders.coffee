$(document).on 'ready page:load', ->
  return if $(".orders.new").length < 1

  page_title = document.getElementById('page-title')
  page_title.innerText = "Please enter your details"
