class AddAbstractToBlog < ActiveRecord::Migration
  def change
    add_column :posts, :abstract, :string
  end
end
