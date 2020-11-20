# Using the each method, write some code to output all the vowels from strings:

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k,v|
  v.each do |element|
    element.split('').each do |letter|
      puts letter if letter =~ /[aeiou]/i
    end
  end
end

