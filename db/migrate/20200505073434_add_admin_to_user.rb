class AddAdminToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :authorization, :integer, default: 0
  end
end
