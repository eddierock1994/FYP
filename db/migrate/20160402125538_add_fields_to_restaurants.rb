class AddFieldsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :phone_no, :string
    add_column :restaurants, :opening_time, :string
  end
end
