class PostSauna < ApplicationRecord
  attachment :sauna_image
  has_many :post_comments, dependent: :destroy

end
