namespace :authors do
  desc "Seeds authors"
  task seed_authors: :environment do
    Author.create!([{
                      name: "Erich Gamma"
                  },
                  {
                    name: "Richard Helm"
                  },
                    {
                      name: "Ralph Johnson"
                    },
                  {
                      name: "John Vlissides"
                  }])

    p "Created #{Author.count} authors"
  end
end
