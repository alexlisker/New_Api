class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.string :metrics
      t.float :delivered
      t.datetime :delivery_date
      t.boolean :verified, default: false 
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true
      t.references :center, foreign_key: true

      t.timestamps
    end
  end
end
