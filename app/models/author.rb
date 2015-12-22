class Author < ActiveRecord::Base
  has_and_belongs_to_many :books


  def self.search(query)
  where("first_name like ? OR last_name like ? OR gender like ?", "%#{query}%", "%#{query}%", "%#{query}%")


  end
end
