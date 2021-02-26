class FavoritesController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user, only: :destroy

    def create
        @favorite = current_user.favorites.build(favorite_params)
        if @favorite.save
          flash[:success] = "Favorite!"
          redirect_to current_user
        else
          render 'static_pages/home'
        end
    end
  
    def destroy
        @favorite.destroy
        flash[:success] = "Favorite deleted"
        redirect_to current_user
    end

    private

    def favorite_params
      params.require(:favorite).permit(:content)
    end

    def correct_user
        @favorite = current_user.favorites.find_by(id: params[:id])
        redirect_to root_url if @favorite.nil?
     end
end
