Post.destroy_all

4.times do
  Post.create(title: Faker::Books::Lovecraft.tome, content: Faker::Books::Lovecraft.sentence)
end
