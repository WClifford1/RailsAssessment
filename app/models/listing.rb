class Listing < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many_attached :image
  has_many :orders

  CITY = %w{ City }
  STATE = %w{ QLD }
  COUNTRY = %w{ AUSTRALIA }

  private

  def not_refereced_by_any_line_item
    unless orders.empty?
     errors.add(:base, "Orders present")
     throw :abort
    end
  end
  
end
