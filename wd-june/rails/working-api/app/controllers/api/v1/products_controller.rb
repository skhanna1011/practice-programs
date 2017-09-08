class Api::V1::ProductsController < ApplicationController
  def index
    if params[:price]
      @products = params[:price] == "desc" ? Product.order('price DESC') : Product.order('price')
    else
      @products = Product.all
    end
  end
  def show
    @product = Product.find(params[:id])
end