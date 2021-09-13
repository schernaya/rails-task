class Author < ApplicationRecord
  has_many :books, through: :book_authors, dependent: :delete_all
end
