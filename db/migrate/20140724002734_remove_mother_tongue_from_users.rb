class RemoveMotherTongueFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :mother_tongue, :string
  end
end
