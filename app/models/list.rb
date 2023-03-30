class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates_associated :bookmarks
  validates :name, uniqueness: true, presence: true
end
