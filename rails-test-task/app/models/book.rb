class Book < ApplicationRecord
  has_many :book_authors, dependent: :delete_all
  has_many :authors, through: :book_authors

  scope :with_authors, ->(author_names) { includes(:authors).where(authors: {name: author_names}) }
end
