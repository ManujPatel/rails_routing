class Order < ApplicationRecord
    validates :quantity,:product_id, presence: true
    belongs_to :product
end
