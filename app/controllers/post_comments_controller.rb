class PostCommentsController < ApplicationController

  def create
    post_sauna = PostSauna.find(params[:post_sauna_id])
    post_comment = PostComment.new(post_comment_params)
    post_comment.user_id = current_user.id
    post_comment.post_sauna_id = post_sauna.id
    post_comment.save
    redirect_to post_sauna_path(post_sauna)
  end

  def destroy
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
