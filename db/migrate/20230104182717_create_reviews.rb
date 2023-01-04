class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content 
      t.integer :raiting
      t.integer :activity_id
    end 
  end
end
