$(document).on 'ready page:load', ->
  return if $(".carts.show").length < 1

  page_title = document.getElementById('page-title')
  page_title.innerText = "Shopping cart"
