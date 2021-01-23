class PostSauna < ApplicationRecord
  attachment :sauna_image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  # favoriteモデルのuser_idに、引数ユーザーのidが存在していたら、trueを返すメソッドを、定義している。
end
