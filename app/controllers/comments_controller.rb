class CommentsController < ApplicationController
    
    def create

        @comment = Comment.new
        @comment.content = params[:input_comment]
        @comment.stars = params[:rating]
        @comment.shop_id = params[:shop_id]
        @comment.save
 
        redirect_to "/show_product/#{@comment.shop_id}"
        
    end
    
    def destroy

        @comment = Comment.find_by(params[:id])
        @comment.destroy
        
        redirect_to "/show_product/#{@comment.shop_id}"
        
    end
    
end