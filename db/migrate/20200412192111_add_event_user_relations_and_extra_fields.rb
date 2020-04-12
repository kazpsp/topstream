class AddEventUserRelationsAndExtraFields < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :user_id, :inte1ger
    add_column :events, :purchase_id, :integer

    add_column :events, :event_date, :date
    add_column :events, :event_start_time, :time
    add_column :events, :event_end_time, :time

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :string
    add_column :users, :country, :string
    add_column :users, :profile_image, :string
    add_column :users, :bio, :text

  end
end
