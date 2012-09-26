require './calc.rb'

describe Calc do

  before(:each) do
    @calc = Calc.new
  end

  it "method 'minus' return 0 for empty input-data" do
    @calc.minus.should == 0
  end

  it "method 'plus' return 0 for empty input-data" do
    @calc.plus.should == 0
  end

  it "method 'plus' return 6 for [1,2,3]" do
    @calc.get 1,2,3
    @calc.plus.should == 6
  end

  it "method 'minus' return -6 for [1,2,3]" do
    @calc.get 1,2,3
    @calc.minus.should == -6
  end

  describe "check with two sequential 'get'" do
    before(:each) do
      @calc.get 1,2,3
      @calc.get 4,5,6
    end

    it { @calc.plus.should == 11 }
    it { @calc.minus.should == -11 }
  end

  describe "check that method 'minus' clear all data inputted previously" do
    before(:each) do
      @calc.get 1,2,3
      @calc.minus
    end

    it { @calc.plus.should == 0 }
    it { @calc.minus.should == 0 }
  end
end
