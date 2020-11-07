class Article < ApplicationRecord
  has_many :comments
  belongs_to :profile
  validates :title, presence: true
  validates :text, presence: true
end
