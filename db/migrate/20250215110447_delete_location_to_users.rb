class DeleteLocationToUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :location
  end
end
