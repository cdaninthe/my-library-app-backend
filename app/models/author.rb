class Author < ActiveRecord::Base
    has_many :books
    has_many :genres, through: :books

    # List of books for an author
    def list_books
        self.books.map do |book|
            "#{book.title} - #{book.genre.name}"
        end
    end
end