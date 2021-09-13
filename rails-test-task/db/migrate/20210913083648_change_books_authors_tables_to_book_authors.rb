class ChangeBooksAuthorsTablesToBookAuthors < ActiveRecord::Migration[6.1]
  def change
    rename_table :books_authors_tables, :book_authors
  end
end
