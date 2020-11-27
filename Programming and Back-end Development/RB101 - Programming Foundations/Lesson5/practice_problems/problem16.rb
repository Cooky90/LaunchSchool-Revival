# A UUID is a type of identifier often used as a way to uniquely identify items, which may not all be created by the same system.
# That is without any form of synchronisation, two or more seperate computer systems can create new items and label them
# with a UUID with no significant chance of stepping on each other's toes.

# Massive randomisation is used to achieve this, there are 3.4 X 10E38 UUID possible values.

# Each UUID consists of 32 hexadecimal characters and it's typically broken into 5 sections(8-4-4-4-12)
# and represented as a string.

# Write a method that returns one UUID when called with no parameters.

HEXIDECIMAL_CHARS = ('0'..'9').to_a + ('a'..'f').to_a


def generate_UUID
  uuid = []
  structure = [8,4,4,4,12]

  structure.each.with_index do |section, index|
    string = ''
    0.upto(section){|_| string << HEXIDECIMAL_CHARS.sample }
    uuid << string
  end

  uuid.join('-')
end

p generate_UUID