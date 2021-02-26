class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @favorite = current_user.favorites.build\
    end
  end

  def about
  end

  def contact
  end

  def random
  end
end
