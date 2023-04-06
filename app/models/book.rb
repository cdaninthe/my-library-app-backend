class Book < ActiveRecord::Base
    belongs_to :genre
    belongs_to :author

    # BOOK WITH THE MOST PAGES
    def self.most_pages
        self.where('pages =?', self.maximum(:pages))
    end

    # TOTAL BOOKS IN MY LIBRARY
    def self.total 
        self.count
    end

    # TOTAL BOOKS READ IN MY LIBRARY
    def self.total_read
        self.total - self.unread.count
    end

    # UNREAD BOOKS IN MY LIBRARY
    def self.unread 
        self.where('read = false')
    end

    # MY NEWEST BOOK (LAST ADDED IN LIBRARY)
    def self.newest
        self.where('created_at =?', self.maximum(:created_at))
    end

end
