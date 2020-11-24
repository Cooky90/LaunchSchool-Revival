# Given this data structure write some code to return an array containing the colours of the fruits and the
# size of the vegetables. The sizes should be uppercase and the colours should be capitalised.


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = hsh.map do |key,value|
    if value[:type] == 'fruit'
      value[:colors].map {|color| color.capitalize }
    elsif value[:type] == 'vegetable'
      value[:size].upcase
    end
end
        
p result