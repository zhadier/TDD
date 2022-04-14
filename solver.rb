class Solver
  def factorial(num)
    return raise "Error, arguement for factorial needs to be a +ve Int type" if (!num.is_a?(Integer) || num.negative?)
    return 1 if num == 0
    return num * (self.factorial num-1)
  end
end