class CreatePostSaunas < ActiveRecord::Migration[6.1]
  def change
    create_table :post_saunas do |t|
      t.text :sauna_name
      t.string :sauna_image_id
      t.text :sauna_introduction
      t.string :prefecture
      t.string :temperature
      t.string :water_pool

      t.timestamps
    end
  end
end
