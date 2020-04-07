class AddFieldsEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :image, :text
    add_column :events, :price, :decimal
    add_column :events, :title, :string
  end
end
