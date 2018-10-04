class Prueba < ActiveRecord::Migration[5.2]
  def change
    
    create_table :centers_types, id:false do |t|
      t.belongs_to :center, index: true
      t.belongs_to :type, index: true
    end

  end
end
