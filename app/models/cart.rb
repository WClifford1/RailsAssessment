class Cart < ApplicationRecord
    has_many :orders, dependent: :destroy

    def add_listing(listing)
        current_item = orders.find_by(listing_id: listing.id)

        if current_item
            current_item.increment(:quantity)
        else
            current_item = orders.build(:listing_id: listing.id)
        end
            current_item
    end

    def total_price
        orders.to_a.sum { |item| item.total_price }
    end
    
end
