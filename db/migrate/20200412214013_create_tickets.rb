class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :purchase_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
