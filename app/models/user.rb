class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :games, dependent: :destroy

  validates :first_name, :last_name, length: { in: 2..100 }
  validates :contact_number, presence: true, length: { minimum: 9 }
end
