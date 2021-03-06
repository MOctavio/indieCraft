class StoreController < ApplicationController
  include  CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def index
    increment_counter
    @products = Product.order(:title)
  end

  private
  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
