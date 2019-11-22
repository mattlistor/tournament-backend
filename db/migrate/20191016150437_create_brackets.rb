class CreateBrackets < ActiveRecord::Migration[5.2]
  def change
    create_table :brackets do |t|
      t.json :bracket
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
