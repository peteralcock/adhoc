class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.decimal :rate
      t.string :metal_level
      t.integer :rate_area

      t.timestamps
    end
  end
end
