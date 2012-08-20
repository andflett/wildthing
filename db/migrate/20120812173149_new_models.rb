class NewModels < ActiveRecord::Migration
  def up
    drop_table :concepts
    drop_table :inspirations
    remove_column :projects, :how_to_get_involved
    remove_column :projects, :created_by
    remove_column :projects, :image
    remove_column :projects, :source_code
    remove_column :projects, :toolkit
    
    create_table :ideas do |t|
      t.string :title
      t.string :idea
      t.string :name
      t.string :twitter_handle
      t.boolean :published, :default => false
    end
    
    create_table :inspirations do |t|
      t.string :vimeo_id
    end
    
  end

  def down
  end
end
