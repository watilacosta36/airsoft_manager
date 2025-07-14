class Game < ApplicationRecord
  belongs_to :user
  has_many :registrations

  validates :data, :local, :title, :description, presence: true

  validates :description, length: { in: 10..2000 }

  before_validation :set_user

  private

  def set_user = self.user = User.first # TODO: configurar melhor essa abordagem de user dono do game
end
