class Calc

  def initialize
    @numbers = []
  end

  def get(*data)
    @numbers = @numbers.concat(data)
  end

  def plus
    sum = @numbers.inject(0,:+)
    @numbers.clear
    sum
  end

  def minus
    sum = @numbers.inject(0,:-)
    @numbers.clear
    sum
  end

end
