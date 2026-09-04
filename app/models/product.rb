class Product < ApplicationRecord
    # バリデーション
    validation :name, presence: true, uniqueness: true #商品名は必須で一意
    validation :price, presence: true                  #価格は必須
end
