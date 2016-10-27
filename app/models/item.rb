class Item < ApplicationRecord

  has_many :orders

  validates :price,
            presence: true,
            numericality: { only_integer: true }

end
