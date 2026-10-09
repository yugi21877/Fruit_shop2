class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable
  has_many :orders

  # ここから追加
    has_one :cart
  # ここまで
end

# class User < ApplicationRecord
#   # ユーザがアップロードした写真を保持する
#   has_one_attached :photo

#   # 画像を縦横 200 x 200 ピクセルにリサイズする
#   def thumbnail
#     # photo.variantで画像を加工し、resize_to_fitで縦横比を維持したまま、指定したサイズにリサイズ
#     photo.variant(resize_to_fit: [200, 200]).processed
#   end
# end