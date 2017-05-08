class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.time :single
      t.time :cat_nap
      t.time :hibernation
      t.decimal :cost

      t.timestamps
    end
  end
end
