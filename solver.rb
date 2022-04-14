class Solver
  def factorial(num)
    return raise 'Error, arguement for factorial needs to be a +ve Int type' if !num.is_a?(Integer) || num.negative?
    return 1 if num.zero?

    num * (factorial num - 1)
  end

  def reverser(str)
    raise 'Expect argument for reverser to be a non empty string' if !str.is_a?(String) || !str.length.positive?

    str.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero? then 'fizzbuzz'
    elsif (number % 3).zero? then 'fizz'
    elsif (number % 5).zero? then 'buzz'
    else
      number.to_s
    end
  end
end
