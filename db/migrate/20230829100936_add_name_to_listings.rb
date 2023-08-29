class AddNameToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :name, :string
  end
end
