require 'simplecov'
SimpleCov.start if ENV["COVERAGE"]

require './calc.rb'

describe Calc do

  before(:each) do
    @calc = Calc.new
  end

  describe "method 'get'" do
    it "with no arguments return empty array" do
      @calc.get.should be_empty
    end

    it "with one num" do
      @calc.get(1).should == [1]
    end

    it "with arrays of num" do
      @calc.get(1,2,3).should == [1,2,3]
    end

    it "twice" do
      @calc.get(1,2,3)
      @calc.get(4,5,6).should == [1,2,3,4,5,6]
    end
  end

  it "method 'minus' return 0 for no input-data" do
    @calc.minus.should == 0
  end

  it "method 'plus' return 0 for no input-data" do
    @calc.plus.should == 0
  end

  describe "calculate for array: [1,2,3]" do
    before(:each) { @calc.get 1,2,3 }
    it { @calc.plus.should == 6 }
    it { @calc.minus.should == -6 }
  end

  describe "calculate for one num: 1" do
    before(:each) { @calc.get 1 }
    it { @calc.plus.should == 1 }
    it { @calc.minus.should == -1 }
  end

  describe "check with two sequential 'get'" do
    before(:each) do
      @calc.get 1,2,3
      @calc.get 4,5,6
    end

    it { @calc.plus.should == 21 }
    it { @calc.minus.should == -21 }
  end

  describe "check that method 'plus' clear all data inputted previously" do
    before(:each) do
      @calc.get 1,2,3
      @calc.plus
    end

    it { @calc.plus.should == 0 }
    it { @calc.minus.should == 0 }
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
