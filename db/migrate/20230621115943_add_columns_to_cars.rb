class AddColumnsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :start_date, :date
    add_column :cars, :end_date, :date
  end
end
