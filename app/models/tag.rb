class Tag < ApplicationRecord
  validates :name, presence: true
  has_many :exercises_tags
  has_many :exercises, through: :exercises_tags
end
