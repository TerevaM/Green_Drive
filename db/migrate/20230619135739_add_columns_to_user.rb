class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :driver_license, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :password, :string
    add_column :users, :profile_picture, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
  end
end
  