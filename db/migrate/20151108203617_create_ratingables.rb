class CreateRatingables < ActiveRecord::Migration
  def change
    create_table :ratingables do |t|
      t.integer :rating_id
      t.integer :topic_id

      t.references :rating, index: true
      t.references :topic, index: true
      t.references :post, index: true

      t.references :rateable, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratingables, :ratings
    add_foreign_key :ratingables, :topics
    add_foreign_key :ratingables, :posts
  end
end
