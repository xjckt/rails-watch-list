class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates_associated :bookmarks
  validates :name, uniqueness: true, presence: true
end
