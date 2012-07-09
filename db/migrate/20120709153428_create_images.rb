class CreateImages < ActiveRecord::Migration
  def up
    add_column :projects, :image, :string
    add_column :concepts, :image, :string
  end

  def down
    remove_column :projects, :image
    remove_column :concepts, :image
  end
end
