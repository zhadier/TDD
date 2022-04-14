class Solver
  def factorial(num)
    return raise "Error, arguement for factorial needs to be a Int type" if num.is_a(Integer)?
    return raise "Error, can't find factorial of -ve number" if num.negative?
    return 1 if num == 0
    return num * (self.factorial num-1)
  end
end