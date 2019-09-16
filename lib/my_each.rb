class Array
  # Write an `Array#my_each(&prc)` method that calls a proc on each element.
  # **Do NOT use the built-in `Array#each`, `Array#each_with_index`, or
  # `Array#map` methods in your implementation.**

  def my_each(&prc)
    i = 0
    while i < keys.length
      prc.call((keys[i], self[keys[i]]))
      i += 1
    end
    self
 end

end
