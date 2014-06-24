class CategoriesController < ApplicationController

def index
 	@categories = Category.all
 	@words = Word.all
 end

 def new

 end

 def show
 	@category = Category.find(params[:id])

 end

 def edit
 end

 def destroy
 end

protected

	def category_params
		params.require(:category).permit(:name, :image, :video)

	end
end
