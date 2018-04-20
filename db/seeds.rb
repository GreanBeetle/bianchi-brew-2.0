Brew.destroy_all
Review.destroy_all

50.times do |i|
  name = Faker::Beer.name
  price = Faker::Number.number(2)
  state = Faker::University.greek_organization
  Brew.create!(name: name, price: price, state: state)
  @brew_id = Brew.last.id
  5.times do |i|
      author = Faker::FunnyName.three_word_name
      content = Faker::Hipster.sentence(50)
      rating = Faker::Number.between(0, 6)
      Review.create!(brew_id: @brew_id, author: author, content: content, rating: rating)
  end
end


p "Created #{Brew.count} brews"
p "Created #{Review.count} reviews"
