class Admins::CategoriesController < ApplicationController
  def index
    @category = Category.new
    if params == nil
      @categories = Category.all
    else
      @categories = Category.where(params[:genre_id])
    end
    @genres = Genre.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to admins_categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to admins_categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admins_categories_path
  end

  private
  def category_params
    params.require(:category).permit(
      :name,
      :genre_id,
      :master
    )
  end
end
