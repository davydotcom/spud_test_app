# This migration comes from spud_cms (originally 20120126232428)
class AddMenuIdToSpudMenuItems < ActiveRecord::Migration

  def change
    add_column :spud_menu_items, :spud_menu_id, :integer
    add_index :spud_menu_items,:spud_menu_id
  end
end
