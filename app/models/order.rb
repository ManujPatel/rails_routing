class Order < ApplicationRecord
    validates :quantity,:product_id, presence: true
    belongs_to :product
    private
      before_create :add_total_price
      before_update :add_total_price
  
      def add_total_price
        product_price=Product.where("id = ?",product_id).pluck(:price)
        self.total_price=product_price[0] * quantity
      end
end
