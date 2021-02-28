words_hash = {
  adjectives: %w(quick lazy sleepy ugly),
  nouns: %w(fox dog head leg),
  verbs: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

text_data = File.open("example_text_data.txt")


text_data.readlines.each do |line|
  p format(line, noun: words_hash[:nouns].sample,
                 adjective: words_hash[:adjectives].sample,
                 verb: words_hash[:verbs].sample,
                 adverb: words_hash[:adverb].sample,
                 )
end
