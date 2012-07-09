class CreateConcepts < ActiveRecord::Migration
  def up
    
    create_table :concepts do |t|
      t.string :title
      t.text :description
      t.string :created_by
    end
    
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :how_to_get_involved
      t.string :created_by
      t.string :url
    end
    
    create_table :inspirations do |t|
      t.string :name
      t.integer :age
      t.string :idea
    end
    
  end

  def down
    drop_table :concepts
    drop_table :projects
    drop_table :inspirations
  end
end
