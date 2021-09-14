class Book < ApplicationRecord
  validates :title, length: {minimum: 2, maximum: 25}, presence: true

  has_many :book_authors, dependent: :delete_all
  has_many :authors, through: :book_authors

  scope :with_authors, ->(author_names) { includes(:authors).where(authors: {name: author_names}) }
end
