class AddSubscribedFieldToPledges < ActiveRecord::Migration
  def change
    add_column :pledges, :subscribed, :boolean, :default => false
  end
end
