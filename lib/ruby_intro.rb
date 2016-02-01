# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |num|
    total += num
  end
  total
end

def max_2_sum arr
  total = 0
  if arr.length == 0
    total = 0
  elsif arr.length == 1
    total = arr[0]
  else
    arr.sort!
    arr.reverse!
    total = arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  diff = 0
  arr_copy = arr
  index = 0
  arr.each do |val|
    diff = n - val
    arr_copy = arr[0...index] + arr[index+1..arr.length]
    if arr_copy.include?(diff)
      return true
    end
    index += 1
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase!
  if s.length == 0 || (! ("a".."z").include?(s[0]))
    return false
  end
  vowels = ["a","e","i","o","u"]
  if (! vowels.include?(s[0]))
    return true
  end
  false
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  s.reverse!
  twos = 2
  total = 0
  valid = true
  binary_arr = s.split("")
  binary_arr.each do |b|
    if b == '0' || b == '1'
      if b == '1'
        total += twos
      end
      twos **= 2
    else
      return false
    end
  end
  if total % 4 == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    @isbn = isbn
    raise ArgumentError.new("ISBN number is an empty string.") if isbn.length == 0
    
    @price = price
    raise ArgumentError.new("Price is less than or equal to $0.") if price <= 0
  end

  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    price = "%.2f" % @price
    return "$#{price}"
  end

end
