def greetings(array, hash)
  p "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} "\
  "#{hash[:occupation]} around."
end

greetings(%w(John Q Doe), { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
