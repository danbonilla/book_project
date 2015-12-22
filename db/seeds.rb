# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
authors_array = [
  {first_name: "John", last_name: "Smith", gender: "Male"},
  {first_name: "Kevin", last_name: "Lane", gender: "Male"},
  {first_name: "Jennifer", last_name: "Green", gender: "Female"},
  {first_name: "Laura", last_name: "Spencer", gender: "Female"},
  {first_name: "Torry", last_name: "Black", gender: "Female"},
  {first_name: "Juan", last_name: "Delcid", gender: "Male"},
  {first_name: "George", last_name: "Mendez", gender: "Male"}
]
authors_array.each do |author| 
 Author.create(author)
end

books_array = [
  {title: "Good Cop", category: "Action", synopsis: "There's a killer targeting witnesses testifying against the mob. A cop must work and investigate his own precint to find the killer before he or she strikes again.", year_published: 1988},
  {title: "Space Wars", category: "Fiction", synopsis: "An intergallactic war between humans and aliens is brewing in the year 2240. Precious resources are neccessary to unsure life, and they are hard to come by. Who will win the war and insure the future of their species?", year_published: 1999},
  {title: "Forever Loved", category: "Romance", synopsis: "A man is diagnosed with terminal cancer and knows he will leave behind his wife and kids. He decides to leave more then just memories behind to show them how much he loves them.", year_published: 1921},
  {title: "Two Guns", category: "Action", synopsis: "In the Wild West respect is not given, but earned, and there's no better way to earn that respect than with your gun. Sylvester know this and makes it his goal to be the baddest gunslinger of his time.", year_published: 1885},
  {title: "Reflections", category: "Poetry", synopsis: "A collection of poems about what humans learns as they grow, and go through the ups and downs of life experiences.", year_published: 1973},
  {title: "My Robot", category: "Fiction", synopsis: "A boy and his robot become the best of friends as they both grow and improve in their own ways.", year_published: 2001},
  {title: "Eternal", category: "Romance", synopsis: "Join Rebeccah and Steve through their journey of love as they go from elementary school until retirement together.", year_published: 2007},
  {title: "Love is Pain", category: "Poetry", synopsis: "A collection of poems for anyone that has experienced the pain that love can bring, the lessons to be learned, and the hope that remains.", year_published: 2001},
  {title: "Homeless", category: "Fiction", synopsis: "Follow Mike as he goes from beign a homeless orphan to a successful businessman. See the struggles that need to be overcome before you can get to where you wanna go.", year_published: 1993},
  {title: "Don't Stop", category: "Action", synopsis: "Kathy is your average teenage girl, but she wants to change that and break into a male-dominated industry of Mixed Martial Arts. To do so she must battle through physical and mental challenges she doesn't know if she can overcome. Can she dig deep and change her life?", year_published: 2005},
  {title: "Super Dog", category: "Fiction", synopsis: "When Tommy's parents gave him his puppy Sparky he knew he was special, but had no idea just how special he really was. See what kind of aventures a dog with super strength, speed, and intelligence can get into.", year_published: 1989},
  {title: "The Cementary", category: "Fiction", synopsis: "There's something going on at the cementary accross from Pete's house. Is it poeple playing pranks, ghosts, or someone/something up to no good? Whatever it is, Pete and his best friend are determined to find out.", year_published: 1985},
  {title: "Champion", category: "Action", synopsis: "Eric is determined to work his way to the top of the boxing world. But to do that he needs to give up everything he holds dear to give it all to boxing. But there are no guarantees he'll get to be a champion, and many things that will be beyond his control. Will taking a chance and turning his back on everything he knows be worth it?", year_published: 2012},
  {title: "For the Soul", category: "Poetry", synopsis: "Poetry from international Poets, who's goal is to enrich the human soul. Whether you need motivation, self-esteem, or just looking for a good read, this is a must have.", year_published: 1989},
  {title: "Epic Story", category: "Fiction", synopsis: "In ancient times many creatures lived along side of the humans.Many looked to become the dominant force on Earth, many were just passing by, but none liked the humans and tried to exterminate them. One man will lead the humans to battle these creatures. Follow our Hero as he faces monsters, gods, and aliens through the most epic story ever told. ", year_published: 1945}
] 
books_array.each do |book|
  Book.create(book)
end


Author.find(1).books << [Book.find(1), Book.find(4), Book.find(9)]
Author.find(2).books << [Book.find(3), Book.find(5)]
Author.find(3).books << [Book.find(6), Book.find(11), Book.find(15)]
Author.find(4).books << [Book.find(11), Book.find(12)]
Author.find(5).books << [Book.find(7), Book.find(13)] 
Author.find(6).books << [Book.find(6), Book.find(4), Book.find(2)]
Author.find(7).books << [Book.find(8), Book.find(5), Book.find(14)]
