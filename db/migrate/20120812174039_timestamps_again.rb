class TimestampsAgain < ActiveRecord::Migration
  def up
      change_table :inspirations do |t|
        t.timestamps
      end
      change_table :ideas do |t|
        t.timestamps
      end
  end

  def down
  end
end
