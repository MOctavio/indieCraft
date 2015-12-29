$(document).on 'ready page:load', ->
  return if $(".carts.show").length < 0

  this.updateQuantity = (line_item_quantity_e) ->
    url = line_item_quantity_e.dataset.url
    if line_item_quantity_e.value.localeCompare('+10') == 0
      updateDOMElements(url, 10, line_item_quantity_e)
      return
    remoteRequest(url,local_data(line_item_quantity_e))
    return

  updateDOMElements = (url, value, line_item_quantity_e) ->
    line_item_e = line_item_quantity_e.parentElement
    line_item_e.removeChild(line_item_quantity_e);
    input = document.createElement('input')
    input.type = 'text'
    input.value = value
    input.style.width = '40px'
    input.dataset.url = url
    line_item_e.appendChild(input);
    button = document.createElement('button')
    button_text = document.createTextNode('Update quantity')
    button.className = 'button-small pure-button'
    button.appendChild(button_text)
    button.addEventListener 'click', ->
      remoteRequest(url,local_data(input))
      return
    line_item_e.appendChild(button);
    remoteRequest(url,local_data(input))
    return

  local_data = (line_item_quantity_e)->
    line_item_quantity = line_item_quantity_e.value
    data = new FormData();
    data.append( 'line_item[quantity]', line_item_quantity );
    return data

  products = document.getElementsByClassName("product")
  for p in products
    elements = p.getElementsByTagName("select")
    for e in elements
      if e.dataset.quantity > 9
        updateDOMElements(e.dataset.url, e.dataset.quantity, e)
