class AddSlugToPortfol < ActiveRecord::Migration[5.2]
  def change
    add_column :portfols, :slug, :string
    add_index :portfols, :slug, unique: true
  end
end
