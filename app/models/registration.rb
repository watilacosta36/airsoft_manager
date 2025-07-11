class Registration < ApplicationRecord
  belongs_to :game

  enum :status, {
    pending: 0,
    confirmed: 1,
    cancelled: 2,
    no_show: 3,
    attended: 4
  }, default: :pending

  validates :name, :contact_number, :status, presence: true
end
