# Working with blocks

```
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

Select is called on the array in which a block is executed, that return value is passed back to the select method.

First element is a hash with two key value pairs. The all? method is called on the hash and another block is executed.
The block evaluates as to whether the first letter of each value is the same as the key when converted to a string. If all
elements in the hash meet the conditional then true is returned, which is then passed back from the block affecting the select method.

