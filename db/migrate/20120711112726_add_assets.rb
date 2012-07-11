class AddAssets < ActiveRecord::Migration
  def up
    add_column :projects, :source_code, :string
    add_column :projects, :toolkit, :string
    add_column :concepts, :source_code, :string
    add_column :concepts, :todo, :text
    add_column :concepts, :presentation, :string
    add_column :concepts, :prototype, :string
  end

  def down
    remove_column :projects, :source_code
    remove_column :projects, :toolkit
    remove_column :concepts, :source_code
    remove_column :concepts, :todo
    remove_column :concepts, :presentation
    remove_column :concepts, :prototype
  end
end
