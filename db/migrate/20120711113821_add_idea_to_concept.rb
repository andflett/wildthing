class AddIdeaToConcept < ActiveRecord::Migration
  def change
    add_column :concepts, :idea, :text
  end
end
