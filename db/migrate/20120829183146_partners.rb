class Partners < ActiveRecord::Migration
  def up
    add_column :inspirations, :title, :string
    create_table :partners do |t|
      t.string :image
      t.string :name
      t.integer :priority, :default => 0
      t.string :url
      t.timestamps
    end
  end

  def down
    remove_column :inspirations, :title
    drop_column :partners
  end
end
