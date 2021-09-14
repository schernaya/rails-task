class Book < ApplicationRecord
  validates :title, presence: true

  has_many :book_authors, dependent: :delete_all
  has_many :authors, through: :book_authors

  def self.with_authors(*authors)
    Book.joins(:authors).where('authors.name IN (?)', *authors).uniq
  end
end
