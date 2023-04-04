puts "🌱 Seeding data..."

# Seed your database here
Genre.create(name: "Fantasy")
Genre.create(name: 'Self-Help')
Genre.create(name: 'Novel')
Genre.create(name: 'Adventure')

Author.create(name: "J. K. Rowling")
Author.create(name: "Marie Kondo")
Author.create(name: "James Clear")
Author.create(name: "Don Miguel Ruiz")

Book.create(title: "Harry Potter and the Philosophers Stone", pages: 309, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Chamber of Secrets", pages: 352, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Prisoner of Azkaban", pages: 435, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Goblet of Fire", pages: 734, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Order of the Phoenix", pages: 912, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Half-Blood Prince", pages: 652, read: false, author_id: 1, genre_id: 1)
Book.create(title: "Harry Potter and the Deathly Hallows", pages: 759, read: false, author_id: 1, genre_id: 1)
Book.create(title: "The Life-Changing Magic of Tidying Up", pages: 226, read: true, author_id: 2, genre_id: 2)
Book.create(title: "Atomic Habits", pages: 306, read: false, author_id: 3, genre_id: 2)
Book.create(title: "The Four Agreements: A Practical Guide to Personal Freedom", pages: 160, read: false, author_id: 4, genre_id: 2)

puts "✅ Done seeding!"
