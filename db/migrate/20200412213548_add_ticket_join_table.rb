class AddTicketJoinTable < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :purchase_id

  end
end
