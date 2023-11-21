class SalesController < ApplicationController

  def new
    # A sale é nestada com o user ou com o produto?
    # acredito que deva ser com o user
    @user = User.find(params[:user_id])
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sales_params)
    @sale.user = current_user


      if sale.save
        # redirect_to "indexdasminhascompras"_path("com o que?"), notice: "Compra efetuada"
      else
        # notice: "Erro na compra # escolher um caminho para redirecionar"
      end

  end


  private

  def sales_params
    params.rqeuire(:sale).permit(:product_id, :user_id)
  end



end




create_table "sales", force: :cascade do |t|
  t.bigint "user_id", null: false
  t.bigint "product_id", null: false
  t.text "review"
  t.integer "rating"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["product_id"], name: "index_sales_on_product_id"
  t.index ["user_id"], name: "index_sales_on_user_id"
end
