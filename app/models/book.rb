class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_many :reviews, dependent: :destroy

  def self.search(query)
  where("title like ? OR category like ? OR year_published like ?", "%#{query}%", "%#{query}%", "%#{query}%")
  #  select * from books as b
   # join authors_books as ab on ab.book_id = b.id
    #join authors as a on ab.author_id = a.id
    #where a.name like "%BALABALA%"; 
  end

  def self.search_book_by_author_name(name)
    Book.joins(:authors).where("authors.first_name like ? OR authors.last_name like ?", "%#{name}%", "%#{name}%")
  end

end
