# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  arr.each do |num|
    total += num
  end
  return total
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  end

  if arr.length == 1
    return arr[0]
  end

  arr.sort
  max = arr.sort[0]
  arr.each_with_index do |value, index|
    arr.each_with_index do |value2, index2|
      if index != index2 and value + value2 > max
        max = value + value2
      end
    end
  end
  return max
end

def sum_to_n?(arr, n)
  arr.each_with_index do |value, index|
    arr.each_with_index do |value2, index2|
      if index != index2 and value + value2 == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s.empty?
    return false
  end
  
  if !s[0].downcase.match?(/^[a-z]/) 
    return false
  end

  if ['a', 'e', 'i', 'o', 'u'].include?(s[0].downcase)
    return false
  end

  return true
end

def binary_multiple_of_4?(s)
  if !s.match?(/^[01]/)
    return false
  end

  num = Integer(s, 2)
  if num % 4 == 0
    return true
  end

  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    price = format("%.2f", @price)
    price = "$#{price}"
  end

end
