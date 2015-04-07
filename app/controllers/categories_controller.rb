class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @page_title = 'Add New Category'
    @category = Category.new
    #因為這邊category是給所有的讀者共用的，
    #所以不需要使用somebody.categories.new這種方式增加
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
