class AddTimestamps < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.timestamps
    end
    change_table :concepts do |t|
      t.timestamps
    end
    change_table :inspirations do |t|
      t.timestamps
    end
  end

  def down
    
  end
end
