class AddPricePerDayToBike < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :price_per_day, :float
  end
end
