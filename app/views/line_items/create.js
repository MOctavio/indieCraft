$("#cart").html("<%= pluralize @cart.items_quantity, 'item' %>");
$("#cart-container")
  .css({'background-color':'rgba(242, 182, 0, 0.5)'})
  .animate({'background-color':'#fff'},1500);
