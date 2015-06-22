class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :body
      t.user :belongs_to
      t.roast :has_one

      t.timestamps null: false
    end
  end
end
