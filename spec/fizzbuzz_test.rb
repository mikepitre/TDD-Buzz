require "minitest/autorun"

require_relative "../lib/fizzbuzz.rb"

class FizzbuzzTest < Minitest::Test

  def test_Fizzbuzz_exists
    assert(Fizzbuzz)
  end

  def test_Fizzbuzz_method_runs
    run = Fizzbuzz.new
    assert(run)
  end

  def test_Divisible_By_3_5_is_Fizzbuzz
    assert_equal("Fizzbuzz", Fizzbuzz.new.fizzbuzz(15))
  end

  def test_Divisible_By_3_is_fizz
    assert_equal("Fizz", Fizzbuzz.new.fizzbuzz(9))
  end

  def test_divisble_by_5_is_buzz
    assert_equal("Buzz", Fizzbuzz.new.fizzbuzz(10))
  end

  def test_not_divisble_by_3_or_5
    assert_equal(13, Fizzbuzz.new.fizzbuzz(13))
  end

  def test_start_returns_fizzbuzzed_array
    assert_equal([1, 2, "Fizz", 4, "Buzz"] , Fizzbuzz.new.start(5))
  end
end
