class Author < ApplicationRecord
  validates :name, length: {minimum: 2, maximum: 25}, presence: true

  has_many :book_authors, dependent: :delete_all
  has_many :books, through: :book_authors
end
