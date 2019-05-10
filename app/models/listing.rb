class Listing < ApplicationRecord
  resourcify
  include Authority::UserAbilities
  before_destroy :not_referenced_by_any_order
  has_many_attached :image
  has_many :orders
  belongs_to :user

  def can_update?(user)
    return self.user == user || user.has_role?(:admin)
  end

  private

  def not_referenced_by_any_order
    unless orders.empty?
     errors.add(:base, "Orders present")
     throw :abort
    end
  end
  
end
