class Order < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :request, presence: true, length: { maximum: 100 }
end