class FavoritesController < ApplicationController
  def index
    @favorite = Favorite.new(name: params[:favorite_name], shop_id: params[:shop_id])
    @favorite.user_id = current_user.id if current_user
    @favorite.save

    redirect_to :back
  end
  
  def show_favorite
    @show = Favorite.where(user_id: current_user.id)
  end
  
  def destroy
    @favorite = Favorite.find_by_shop_id(params[:shop_id])
    @favorite.destroy
    
    redirect_to :back
  end
  
end
