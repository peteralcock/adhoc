class CreateZips < ActiveRecord::Migration[7.0]
  def change
    create_table :zips do |t|
      t.string :code
      t.string :county
      t.integer :rate_area

      t.timestamps
    end
  end
end
