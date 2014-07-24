class AddMotherTongueToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mother_tongue, :string
  end
end
