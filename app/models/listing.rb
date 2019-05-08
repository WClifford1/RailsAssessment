class Listing < ApplicationRecord
  before_destroy :not_referenced_by_any_order
  belongs_to :user, optional: true
  has_many_attached :image
  has_many :orders


  private

  def not_referenced_by_any_order
    unless orders.empty?
     errors.add(:base, "Orders present")
     throw :abort
    end
  end
  
end
