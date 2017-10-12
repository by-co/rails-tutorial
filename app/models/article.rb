class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # ensures that all titles are >5 characters long
  validates :title, presence: true,
                    length: { minimum: 5 }
end
