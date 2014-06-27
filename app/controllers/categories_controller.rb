class CategoriesController < ApplicationController

respond_to :json, :html

def index
	if current_user
	 	@categories = Category.all
	 	@words = Word.all
	 	respond_with @categories
	else
		redirect_to root_path
	end

 end

 def show
 	@category = Category.find(params[:id])
 end


protected

	def category_params
		params.require(:category).permit(:name, :image, :video)

	end
end
