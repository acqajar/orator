class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.references :user, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :texts, :users
  end
end
