class CreateBookTransactions < ActiveRecord::Migration
  def change
    create_table :book_transactions do |t|
      t.integer :book_reservation_id
      t.string :action
      t.integer :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params

      t.timestamps
    end
  end
end
