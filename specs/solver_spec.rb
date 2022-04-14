require_relative "../solver"

describe Solver do
  before :each do
    @solver = Solver.new 
  end

  context '#new' do
    it 'Initializes Solver when 0 arguements given' do
      expect(@solver).to be_instance_of(Solver)
    end
  end
end