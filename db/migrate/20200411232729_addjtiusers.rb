class Addjtiusers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :jti, :string, null: false, default: "error"
    add_index :users, :jti, unique: true
  end
end
