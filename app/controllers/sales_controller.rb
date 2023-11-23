class SalesController < ApplicationController
  def new
    # A sale é nestada com o user ou com o produto?
    # acredito que deva ser com o user
    @sale = Sale.new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @sale = Sale.new
    @sale.user = current_user
    @sale.product = @product

    if @sale.save
      redirect_to sales_path, notice: "Compra efetuada"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @sales = current_user.sales.all
  end
end
