class Fizzbuzz

  def new_fizzbuzz
    Fizzbuzz.new
  end

  def fizzbuzz(num)
    if num % 5 == 0 && num % 3 == 0
      "Fizzbuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end

  def start(max)
    (1..max).map do |n|
      fizzbuzz(n)
    end
  end

end

