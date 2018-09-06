100.times do |post|
  Sale.create(title: 'Test Title', description: 'test description', qty_available: post)
end

puts '100 Sale items created'