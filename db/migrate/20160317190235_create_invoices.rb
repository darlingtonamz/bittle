class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :token
      t.references :business, index: true, foreign_key: true
      t.string :item
      t.decimal :cost
      t.integer :interest
      t.integer :duration
      t.integer :due_time
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end
