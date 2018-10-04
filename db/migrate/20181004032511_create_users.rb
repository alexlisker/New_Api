class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.decimal :document
      t.string :name
      t.string :surname
      t.string :account_contract
      t.date :birth_date
      t.string :email
      t.decimal :movil
      t.string :username
      t.string :password
      t.datetime :date_reg

      t.timestamps
    end
  end
end
