class AddSectionToLinks < ActiveRecord::Migration
  def change
    add_column :links, :section_id, :integer
    add_index :links, :section_id
  end
end
