$("#cart").html("<%= pluralize @cart.items_quantity, 'item' %>");
$("#cart-container")
  .css({'background-color':'rgba(155,155,147, 0.5)'})
  .animate({'background-color':'#fff'},1500);
