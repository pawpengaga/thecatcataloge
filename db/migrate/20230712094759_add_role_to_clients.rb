class AddRoleToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :role, :integer, default: 1
  end
end
