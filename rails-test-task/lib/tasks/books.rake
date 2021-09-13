namespace :books do
  desc "Seeds books"
  task seed_books: :environment do
    Book.create!([{
                    title: "Design Patterns"
                   },
                   {
                     title: "DummyBook2"
                   },
                   {
                    title: "DummyBook3"
                   }])

    p "Created #{Book.count} books"
  end
end
