class CreatePledges < ActiveRecord::Migration
  def up
    create_table :pledges do |t|
      t.string :name
      t.string :twitter
      t.string :facebook
      t.string :email
      t.timestamps
    end
  end

  def down
    drop_table :pledges
  end
end
