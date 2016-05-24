class Admin::ProductsController < Admin::BaseController
  def index

  	@products = Product.page(params[:page]).per(30)
  end

  def new
  	@product = Product.new
  end

  def create

  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to admin_product_path, notice: "Pomyślnie dodano produkt."
  	else
  		render action: :new
  	end
  end
  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.save
  		redirect_to admin_product_path, notice: "Pomyślnie zaktualizowano produkt."
  	else
  		render action: :edit
  	end
  end

  private

  def product_params
  	params.require(:product).permit(
  		:name,
  		:description,
  		:long_description,
  		:photo,
  		:price,
  		:category_id
  		)
  end
end