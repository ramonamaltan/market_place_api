class Product < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
end
