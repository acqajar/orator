class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :imageable, polymorphic: true

      t.timestamps null: false
    end
    #because 2 columsn are queried together, add index
    add_index :images, [:imageable_id, :imageable_type]
  end
end
