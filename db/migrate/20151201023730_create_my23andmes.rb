class CreateMy23andmes < ActiveRecord::Migration
  def change
    create_table :my23andmes do |t|
      t.string :disease
      t.text :gideline
      t.text :mechanizem
      t.text :pharmacotherapy

      t.timestamps null: false
    end
  end
end
