Brew.destroy_all
Review.destroy_all

50.times do |i|
  name = Faker::Beer.name
  price = Faker::Number.number(2)
  state = Faker::StarWars.planet
  Brew.create!(name: name, price: price, state: state)
  @brew_id = Brew.last.id
  5.times do |i|
    author = Faker::FunnyName.three_word_name
    content = Faker::Hipster.sentence(10)
    rating = Faker::Number.between(1, 5)
    Review.create!(brew_id: @brew_id, author: author, content: content, rating: rating)
  end
  if @brew_id == Brew.first.id
    10.times do |i|
      Review.create!(brew_id: @brew_id, author: Faker::FunnyName.three_word_name, content: Faker::Hipster.sentence(10), rating: Faker::Number.between(1, 5))
    end
  end
end


p "Created #{Brew.count} brews"
p "Created #{Review.count} reviews"
