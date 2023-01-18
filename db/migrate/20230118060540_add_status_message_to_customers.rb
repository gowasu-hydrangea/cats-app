class AddStatusMessageToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :status_message, :text
  end
end
