BLOCK = [
  ['B', 'O'],
  ['X', 'K'],
  ['D', 'Q'],
  ['C', 'P'],
  ['N', 'A'],
  ['G', 'T'],
  ['R', 'E'],
  ['F', 'S'],
  ['J', 'W'],
  ['H', 'U'],
  ['V', 'I'],
  ['L', 'Y'],
  ['Z', 'M']
].freeze

def block_word?(word)
  spelling_block = BLOCK.clone

  word.upcase.split('').each do |letter|
    spelling_block.each do |block_inner_array|
      if block_inner_array.include?(letter)
        block_inner_array.delete(letter)
        return false if block_inner_array.empty?
      end
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
