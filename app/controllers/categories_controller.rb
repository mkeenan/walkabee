class CategoriesController < ApplicationController

def index
 	@category = Categories.all
 end

 def new
 	@categories = Category.new
 end

 def show
 	@categories = Category.find(params[:id])
 end

 def edit
 end

 def destroy
 end

end