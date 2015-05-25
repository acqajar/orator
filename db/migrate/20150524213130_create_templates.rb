class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :html
      t.text :css
      t.text :js

      t.timestamps null: false
    end
  end
end
