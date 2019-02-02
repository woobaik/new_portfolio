class RemoveSlugFromPortfols < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfols, :slug, :string
  end
end
