$(document).on 'ready page:load', ->
  $('#notice').fadeOut(4000);
  return if $(".store.index").length < 1

  page_title = document.getElementById('page-title')
  page_title.innerText = "New deals and more every day. Keep visiting us to find more about."
