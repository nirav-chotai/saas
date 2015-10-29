# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total=0
  if arr.empty?
    return 0
  else
    arr.each do |x|
      total += x
    end
  end
  return total
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length==1
    return arr[0]
  else
    arr.sort!{|x,y| y<=> x}
    return arr[0]+arr[1]
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elsif arr.length==1
    return false
  else
    !!arr.combination(2).find{|x,y| x+y==n}
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.length==0
    return false
  elsif s =~ /\A(?=[a-z])/i
    return false
  else
    output = s.to_i(2)
    if output % 4 == 0
      return true
    end
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn.length == 0 
      raise ArgumentError.new('Invalid ISBN')
    end
    if price <= 0
      raise ArgumentError.new('Invalid Price')
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    @price = new_price
  end
  def price_as_string
    return sprintf('$%.2f', @price)
  end
end
