class AddImageAndSlugToPosts < ActiveRecord::Migration
  def change
    drop_table :categories
    add_column :posts, :image, :string
    add_column :posts, :slug, :string
    add_column :projects, :image, :string
  end
end
