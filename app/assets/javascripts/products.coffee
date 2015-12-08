$(document).on 'ready page:load', ->
  return if $(".products").length < 1

  page_title = document.getElementById('page-title')
  page_title.innerText = "Products module"
