class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.references :bike, null: false, foreign_key: true
      t.string :user_name

      t.timestamps
    end
  end
end
