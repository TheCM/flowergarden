class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

private
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
