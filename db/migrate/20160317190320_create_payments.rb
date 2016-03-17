class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :invoice, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
