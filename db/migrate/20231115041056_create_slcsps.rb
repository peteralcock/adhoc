class CreateSlcsps < ActiveRecord::Migration[7.0]
  def change
    create_table :slcsps do |t|
      t.string :zipcode
      t.decimal :rate

      t.timestamps
    end
  end
end
