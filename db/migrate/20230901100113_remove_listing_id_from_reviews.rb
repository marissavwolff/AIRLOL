class RemoveListingIdFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :listing, null: false, foreign_key: true
  end
end
