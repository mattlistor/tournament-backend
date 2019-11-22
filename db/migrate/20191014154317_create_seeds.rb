class CreateSeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :seeds do |t|
      t.string :name
      t.string :placement
      t.integer :seed_num
      t.integer :bracket_id
      t.timestamps
    end
  end
end
