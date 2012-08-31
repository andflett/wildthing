class AddBodyToProject < ActiveRecord::Migration
  def change
    add_column :projects, :body, :text
  end
end
