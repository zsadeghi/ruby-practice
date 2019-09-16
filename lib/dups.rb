
class Array
  # Write an `Array#dups` method that will return a hash containing the indices
  # of all duplicate elements. The keys are the duplicate elements; the values
  # are arrays of their indices in ascending order.
  # e.g. [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups

  positions = Hash.new {|k, v| k[v] = []}

  self.each_with_index do |item, index|
    positions[item] << index
  end

  self.select {|key, value| value.count > 1}
  end
end
