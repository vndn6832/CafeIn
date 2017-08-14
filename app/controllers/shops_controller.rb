class ShopsController < ApplicationController
   def index
        
        
    end
    def location
      # render layout: false
  end
    def near_shop
        @current_lat = params[:lat]
        @current_lon = params[:long]
        @shop = Shop.select("id, Name, (6371*acos(cos(radians("+@current_lat+"))*cos(radians(Latitude))*cos(radians(Longtitude)-radians("+@current_lon+"))+sin(radians("+@current_lat+"))*sin(radians(Latitude)))) AS Distance").group("Distance").having("Distance < ?", 2)  
        # p @lat.to_i - @long.to_i
        
        
     
    end
  def select_shop
   

    @shopname = Shop.all
  end
  
  def show_product
    @selected_shop = Shop.find_by_id(params[:id])
    @products = Product.where(shop_id: params[:id])
    @comments = Comment.where(shop_id: params[:id])
    
  end
  
  def pay
    @selected_product = Product.find_by_id(params[:id])
    @products = Product.where(id: params[:id])
  end

end
