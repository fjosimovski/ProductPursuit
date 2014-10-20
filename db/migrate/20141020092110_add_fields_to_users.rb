class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :coy, :string
  end
end
