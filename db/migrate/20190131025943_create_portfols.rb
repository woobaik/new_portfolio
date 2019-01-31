class CreatePortfols < ActiveRecord::Migration[5.2]
  def change
    create_table :portfols do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
