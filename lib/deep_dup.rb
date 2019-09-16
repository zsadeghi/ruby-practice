# Using recursion and the `is_a?` method, write an `Array#deep_dup` method that
# will perform a "deep" duplication of the interior arrays.

def deep_dup(arr)
  arr.map {|ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
end
