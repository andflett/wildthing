class AddSlugs < ActiveRecord::Migration
  def up
    add_column :projects, :slug, :string
    add_column :categories, :slug, :string
    add_column :inspirations, :slug, :string
    add_column :concepts, :slug, :string
  end

  def down
    remove_column :projects, :slug
    remove_column :categories, :slug
    remove_column :inspirations, :slug
    remove_column :concepts, :slug
  end
end
