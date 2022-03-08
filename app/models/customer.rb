class Customer < ApplicationRecord
    validates :fname, :lname, :email, :phone_number, presence: true
    validates :email,:phone_number, uniqueness: true
    validates :phone_number, length: { is: 10 }
    def self.search(search)
        if search
          customer = Customer.where(fname: search)
        else
          Customer.all
        end
    end
end
