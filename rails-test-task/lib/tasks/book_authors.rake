namespace :book_authors do
  desc "Seeds book_authors"
  task seed_book_authors: :environment do
    BookAuthor.create!([{
                           book_id: "1",
                           author_id: "1"
                         },
                         {
                           book_id: "1",
                           author_id: "2"
                         },
                         {
                           book_id: "1",
                           author_id: "3"
                         },
                         {
                           book_id: "1",
                           author_id: "4"
                         },
                         {
                           book_id: "2",
                           author_id: "2"
                         },
                         {
                           book_id: "2",
                           author_id: "3"
                         },
                         {
                           book_id: "3",
                           author_id: "4"
                         },
                         {
                           book_id: "3",
                           author_id: "2"
                         }])

    p "Created #{BookAuthor.count} book_authors"
  end
end
