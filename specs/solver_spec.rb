require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#new' do
    it 'Initializes Solver when 0 arguements given' do
      expect(@solver).to be_instance_of(Solver)
    end

    it 'Gives error when arguements given' do
      expect { Solver.new(1) }.to raise_error(ArgumentError)
    end
  end

  context '#factorial' do
    it 'takes one arguement and returns its factorial' do
      expect(@solver.factorial(3)).to eql(6)
    end

    it 'returns 1 if argument is 0' do
      expect(@solver.factorial(0)).to eql(1)
    end

    it 'raises exception if number is negative' do
      expect { @solver.factorial(-1) }.to raise_error('Error, arguement for factorial needs to be a +ve Int type')
    end

    it 'raises exception if number is not an Int' do
      expect do
        @solver.factorial('Zeeshan')
      end.to raise_error('Error, arguement for factorial needs to be a +ve Int type')
    end
  end

  context '#reverser' do
    it 'hello should return olleh' do
      expect(@solver.reverser('hello')).to eql('olleh')
    end
    it 'Should raise if parameter is not a string' do
      expect { @solver.reverser(-1) }.to raise_error('Expect argument for reverser to be a non empty string')
    end
  end

  context '#fizzbuzz' do
    it 'should return fizz' do
      test_case = 9
      expected = 'fizz'

      test_case = @solver.fizzbuzz(test_case)

      expect(test_case).to eql(expected)
    end

    it 'should return buzz' do
      test_case = 10
      expected = 'buzz'

      test_case = @solver.fizzbuzz(test_case)

      expect(test_case).to eql(expected)
    end

    it 'should return buzz' do
      test_case = 30
      expected = 'fizzbuzz'

      test_case = @solver.fizzbuzz(test_case)

      expect(test_case).to eql(expected)
    end

    it 'should return buzz' do
      test_case = 4
      expected = '4'

      test_case = @solver.fizzbuzz(test_case)

      expect(test_case).to eql(expected)
    end
  end
end
