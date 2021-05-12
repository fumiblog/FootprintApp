class Users::HomesController < ApplicationController
  def top
    @genres = Genre.all
    @categories = Category.all
  end

end
