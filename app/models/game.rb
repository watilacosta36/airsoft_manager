class Game < ApplicationRecord
  belongs_to :user
  has_many :registrations

  has_one_attached :cover_image

  validates :data, :local, :title, :description, presence: true
  validates :description, length: { in: 10..2000 }

  enum :status, [:draft, :published, :finished, :canceled], default: :draft

  scope :published, -> { where(status: :published) }
end
