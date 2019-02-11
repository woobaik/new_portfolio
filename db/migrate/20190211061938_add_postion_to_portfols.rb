class AddPostionToPortfols < ActiveRecord::Migration[5.2]
  def change
    add_column :portfols, :postion, :integer
  end
end
