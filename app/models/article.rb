class Article < ApplicationRecord
  # ensures that all titles are >5 characters long
  validates :title, presence: true,
                    length: { minimum: 5 }
end
