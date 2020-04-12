class Ticket < ApplicationRecord
  belongs_to :buyer, class_name: 'User', foreign_key: "buyer_id"
  belongs_to :purchase, class_name: 'Event', foreign_key: "purchase_id"
end
