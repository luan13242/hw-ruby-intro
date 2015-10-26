# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return "not all integers" unless arr.all? {|i| i.is_a?(Integer)}

  s = 0
  arr.each { |x| s = s + x }
  return s
end


def max_2_sum arr
  return "not all integers" unless arr.all? {|i| i.is_a?(Integer)}

  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  arr2 = arr.sort
  return arr2[-1] + arr2[-2]
end

def sum_to_n? arr, n
  return "not all integers" unless arr.all? {|i| i.is_a?(Integer)}

  if arr.length < 2
    return false
  end

  found = 0
  for i in 0..arr.length-1
    for j in 0..arr.length-1
      if (i != j) && (arr[i]+arr[j] == n)
          found = 1
      end
    end
  end
  if found == 1
    return true
  else
    return false
  end
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end


def starts_with_consonant? s
  if s.length == 0
    return false
  elsif s[0] =~ /[a-zA-Z]/
    if s[0] =~ /[^a,e,i,o,u]/i
      return true
    else
      return false
    end
  else
    return false
  end
end


def binary_multiple_of_4? s
  if s.length == 0
    return false
  elsif s =~ /[^0,1]/
    return false
  end

  if s.to_i(2).modulo(4) == 0
    return true
  else
    return false
  end
end


# Part 3

class BookInStock

  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError, 'ISBN needs to be a string or price greater than 0'
    end
    @isbn = isbn
    @price = price
  end

  attr_reader :isbn, :price

  public
  def isbn= s
    raise ArgumentError, 'ISBN needs to be a string' unless s.length > 0
    @isbn = s
  end
  
    public
  def price= n
    raise ArgumentError, "numeric value required" unless  n.is_a? Numeric
    raise ArgumentError, "price needs to be greater than 0" unless n > 0
    @price = n
  end

  public
  def price_as_string
    return "$%.2f" % [@price]
  end
end