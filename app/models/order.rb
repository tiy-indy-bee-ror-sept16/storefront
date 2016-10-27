class Order < ApplicationRecord

  belongs_to :item
  belongs_to :user

  after_save :update_items_total_quantity
  after_destroy :update_items_total_quantity

  def update_items_total_quantity
    item.update(
      total_quantity: item.orders.sum(:quantity)
    )
  end

end
