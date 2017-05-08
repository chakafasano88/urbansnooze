class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.datetime :bday
      t.integer :phone_num
      t.integer :cc_num

      t.timestamps
    end
  end
end
