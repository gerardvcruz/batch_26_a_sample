class CategoriesController < ApplicationController
  before_action :authenticate_user

  def index
    
  end

  def new

  end

  def create
    @category = Category.new(category_params)

    @category.user_id = current_user.id

    if @category.save
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
