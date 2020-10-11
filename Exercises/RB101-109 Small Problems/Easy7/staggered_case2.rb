def is_char?(string)
  !!(string =~ /[a-zA-Z]/)
end

def staggered_case(string)
  index_subtraction = 0
  string.chars.map.with_index do |char,index|
    index_subtraction += 1 if !is_char?(char)
    (index - index_subtraction).even? ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'