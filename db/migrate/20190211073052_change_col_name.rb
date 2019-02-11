class ChangeColName < ActiveRecord::Migration[5.2]
  def change
    rename_column :portfols, :postion, :position
  end
end
