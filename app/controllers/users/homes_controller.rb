class Users::HomesController < ApplicationController
  def top
    @genres = Genre.all
  end
  
end
