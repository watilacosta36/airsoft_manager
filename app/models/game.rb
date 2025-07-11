class Game < ApplicationRecord
  belongs_to :user
  has_many :registrations

  validates :data, :local, :title, :description, presence: true

  validates :description, length: { in: 10..2000 }
end
