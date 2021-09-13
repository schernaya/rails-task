require "application_system_test_case"

class BookAuthorsTest < ApplicationSystemTestCase
  setup do
    @book_author = book_authors(:one)
  end

  test "visiting the index" do
    visit book_authors_url
    assert_selector "h1", text: "Book Authors"
  end

  test "creating a Book author" do
    visit book_authors_url
    click_on "New Book Author"

    fill_in "Author", with: @book_author.author_id
    fill_in "Book", with: @book_author.book_id
    click_on "Create Book author"

    assert_text "Book author was successfully created"
    click_on "Back"
  end

  test "updating a Book author" do
    visit book_authors_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book_author.author_id
    fill_in "Book", with: @book_author.book_id
    click_on "Update Book author"

    assert_text "Book author was successfully updated"
    click_on "Back"
  end

  test "destroying a Book author" do
    visit book_authors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book author was successfully destroyed"
  end
end
