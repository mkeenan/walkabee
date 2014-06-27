# created to implement future functionality involving children

class ChildrenController < ApplicationController
 
  def index
    @children = current_user.children.all
  end

  def new
    @child = current_user.children.build
  end

 def create
 	@child = Child.new(params.require(:child).permit(:first_name, :user_id))
 	if @child.save
		flash[:success] = "You have successfully added a child!"
		redirect_to new_child_path
	else
		render 'new'
	end
 end

 def show
 	@child = Child.find(params[:id])
 end

 def edit
  @child = Child.find(params[:id])
 end

 def update
  @child = Child.find(params[:id])
    if @child.update(params.require(:child).permit(:first_name, :user_id))
      redirect_to new_child_path
    else
      render 'edit'
    end
 end

 def destroy
 end

end