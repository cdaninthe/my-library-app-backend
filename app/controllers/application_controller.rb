class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # BOOK ROUTES
  ### CREATE, UPDATE & DELETE BOOKS
  get '/books' do
    Book.all.to_json
  end
  
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json(include: :author)
  end

  post '/books' do
    book = Book.create(
      title: params[:title],
      pages: params[:pages],
      read: false,
      author_id: params[:author_id],
      genre_id: params[:genre_id]
    )
    book.to_json
  end

  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      pages: params[:pages],
      read: params[:read],
      author_id: params[:author_id],
      genre_id: params[:genre_id]
    )
    book.to_json
  end

  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end

  ### BOOK WITH THE MOST PAGES
  get '/books_most_pages' do
    Book.most_pages.to_json
  end

  ### TOTAL BOOKS IN MY LIBRARY
  get '/books_total' do
    Book.total.to_json
  end

  ### TOTAL BOOKS READ IN MY LIBRARY
  get '/books_total_read' do
    Book.total_read.to_json
  end

  ### UNREAD BOOKS IN MY LIBRARY
  get '/books_unread' do
    Book.unread.to_json
  end

  ### MY NEWEST BOOK (LAST ADDED IN LIBRARY)
  get '/books_newest' do
    Book.newest.to_json
  end  


  # AUTHORS ROUTES
  post '/authors' do
    author = Author.create(name: params[:name])
    author.to_json
  end

  patch '/authors/:id' do
    author = Author.find(params[:id])
    author.update(name: params[:name])
    author.to_json
  end


  # GENRES ROUTES
  post '/genres' do
    genre = Genre.create(name: params[:name])
    genre.to_json
  end

  patch '/genres/:id' do
    genre = Genre.find(params[:id])
    genre.update(name: params[:name])
    genre.to_json
  end

end
