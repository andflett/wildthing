class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :title
    end
    add_column :projects, :category_id, :integer
  end

  def down
    drop_table :categories
    remove_column :projects, :category_id
  end
end
