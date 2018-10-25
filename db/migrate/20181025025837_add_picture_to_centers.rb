class AddPictureToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :picture, :string
  end
end
