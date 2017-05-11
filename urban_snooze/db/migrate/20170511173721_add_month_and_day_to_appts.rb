class AddMonthAndDayToAppts < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :month, :string
    add_column :appointments, :day, :string
  end
end
