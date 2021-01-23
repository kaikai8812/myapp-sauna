class FavoritesController < ApplicationController

  def create
    @post_sauna = PostSauna.find(params[:post_sauna_id])
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.post_sauna_id = @post_sauna.id
    @favorite.save
    redirect_to post_sauna_path(@post_sauna)
  end

  def destroy
    @post_sauna = PostSauna.find(params[:post_sauna_id])
    @favorite = current_user.favorites.find_by(post_sauna_id: @post_sauna.id)
    @favorite.destroy
    redirect_to post_sauna_path(@post_sauna)
  end
end
