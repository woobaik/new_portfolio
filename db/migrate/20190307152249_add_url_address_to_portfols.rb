class AddUrlAddressToPortfols < ActiveRecord::Migration[5.2]
  def change
    add_column :portfols, :url_address, :string
  end
end
