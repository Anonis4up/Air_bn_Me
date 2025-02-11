class AddPictureUrlToBike < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :poster_url, :string
  end
end
