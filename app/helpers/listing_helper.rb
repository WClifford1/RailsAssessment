module ListingHelper

    def listing_author(listing)
        user_signed_in? && current_user.id == listing.user_id
    end
    
end
