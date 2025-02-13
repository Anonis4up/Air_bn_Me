class AddLocationToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :location, :string
  end
end
