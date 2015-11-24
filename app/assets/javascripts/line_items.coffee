$(document).on 'ready page:load', ->
  return if $(".store.index").length > 0
  
  line_item_quantity_e = document.getElementById('line_item_quantity')
  return if !line_item_quantity_e

  if line_item_quantity_e.dataset.quantity > 9
    updateDOMElements(line_item_quantity_e.dataset.url, line_item_quantity_e.dataset.quantity)

  this.updateQuantity = ->
    line_item_quantity_e = document.getElementById('line_item_quantity')
    url = line_item_quantity_e.dataset.url
    if line_item_quantity_e.value.localeCompare('+10') == 0
      updateDOMElements(url, 10)
    remoteRequest(url,local_data())
    return

  updateDOMElements = (url, value) ->
    line_item_e = document.getElementById('line_item')
    line_item_quantity_e = document.getElementById('line_item_quantity')

    line_item_e.removeChild(line_item_quantity_e);
    input = document.createElement('input')
    input.type = 'text'
    input.className = 'css-class-name'
    input.id = 'line_item_quantity'
    input.value = value
    input.style.width = '40px'
    input.dataset.url = url
    line_item_e.appendChild(input);

    button = document.createElement('button')
    button_text = document.createTextNode('Update quantity')
    button.appendChild(button_text)
    button.addEventListener 'click', ->
      remoteRequest(url,local_data())
      return
    line_item_e.appendChild(button);
    return

  local_data = ->
    line_item_quantity = document.getElementById('line_item_quantity').value
    data = new FormData();
    data.append( 'line_item[quantity]', line_item_quantity );
    return data
