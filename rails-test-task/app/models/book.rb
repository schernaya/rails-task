class Book < ApplicationRecord
  has_many :authors, through: :book_authors, dependent: :delete_all
end
