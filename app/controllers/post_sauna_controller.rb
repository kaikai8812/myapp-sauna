class PostSaunaController < ApplicationController

  def new
    @post_sauna = PostSauna.new
  end
  def create
    @post_sauna = PostSauna.new(post_sauna_params)
    @post_sauna.save
    # binding.pry
    redirect_to post_sauna_index_path
    # リダイレクト先は、投稿一覧画面。
  end
  def index
    @post_saunas = PostSauna.all
  end
  def show
    @post_sauna = PostSauna.find(params[:id])
    @post_comment = PostComment.new
  end
  def edit
    @post_sauna = PostSauna.find(params[:id])
  end
  def update
   @post_sauna = PostSauna.find(params[:id])
   @post_sauna.update(post_sauna_params)
   redirect_to post_sauna_path
  end
  def destroy
    PostSauna.find(params[:id]).destroy
    redirect_to post_sauna_index_path
  end

    private
  def post_sauna_params
    params.require(:post_sauna).permit(:sauna_image, :sauna_name, :sauna_introduction, :prefecture, :temperature, :water_pool)
  end



end
