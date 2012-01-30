# This migration comes from spud_cms (originally 20120128163601)
class AddClassesToSpudMenuItems < ActiveRecord::Migration
  def change
    add_column :spud_menu_items, :classes, :string

  end
end
