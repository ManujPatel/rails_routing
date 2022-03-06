class Product < ApplicationRecord
    validates :title,:description,:price, presence: true
    validates :title, uniqueness: true
    has_many :orders, dependent: :destroy
end
