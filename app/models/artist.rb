class Artist < ActiveRecord::Base

  validates :name, presence: true
  validates :photo_url, presence: true

  has_many :songs, dependent: :destroy
end