# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* **Database initialization**

 rails authors:seed_authors
 
 rails books:seed_books
 
 rails book_authors:seed_book_authors


* **How to run the test suite**

bundle exec rspec

**Task**

We're building a service that is able to return you a list of books that are written by a collaboration of authors.

Create two tables, authors and books.

You're required to create a method Books.with_authors(author1Name, author2Name, author3Name)

If there is a book that was written by a given list of authors - return it.

Books example:

Design Patterns by Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides

DummyBook2 by Richard Helm, Ralph Johnson

DummyBook3 by John Vlissides, Richard Helm

Example of usage:

Books.with_authors('Erich Gamma') -> returns relation of books(Design Patterns)

Books.with_authors('Erich Gamma', 'Richard Helm') -> returns relation of books(Design Patterns)

Books.with_authors('Erich Gamma', 'Other Person') -> returns empty relation

Books.with_authors('Richard Helm', 'Ralph Johnson') -> returns relation of books(Design Patterns, DummyBook2)

Books.with_authors('Richard Helm', 'John Vlissides') -> returns relation of books(Design Patterns, DummyBook3)

Bonus points for Docker. Bonus points for basic UI.

Specs are required. Tables should be created and seed data should be present. Method should accept infinite number of args

Firstly complete method implementation and only then implement bonus point tasks.