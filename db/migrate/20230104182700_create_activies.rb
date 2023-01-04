class CreateActivies < ActiveRecord::Migration[6.1]
  def change
    create_table :activies do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :image
    end 
  end
end
