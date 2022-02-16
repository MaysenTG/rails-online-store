class Product < ApplicationRecord
    has_one_attached :image, :dependent => :destroy
    has_many :order_items, :dependent => :destroy
    belongs_to :category
end
