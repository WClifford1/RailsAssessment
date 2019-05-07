class CartsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to @cart, notice: "Cart was successfully created"

    else
      render :new
    end

  end

  def update
    if @cart.update(cart_params)
      redirect_to @cart, notice: "Cart was successfully updated"
    else
      render :edit
    end
  end


  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    redirect_to root_path, notice: "Cart was successfully deleted"
  end


private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.fetch(:cart, {})
  end

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, notice: "That cart doesn't exist"
  end

end

