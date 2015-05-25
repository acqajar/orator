class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :html
      t.text :css
      t.text :js
      t.references :user, index: true
      t.references :template, index: true

      t.timestamps null: false
    end
    add_foreign_key :pages, :users
    add_foreign_key :pages, :templates
  end
end
