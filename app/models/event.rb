class Event < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user

  has_many :tickets, foreign_key: "buyer_id"
  has_many :buyers, through: :tickets, class_name: "User", foreign_key: "buyer_id"

end
