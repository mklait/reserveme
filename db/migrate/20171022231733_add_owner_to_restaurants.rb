class AddOwnerToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :owner, foreign_key: true
  end
end
