module Calc
  class Calc

    def initialize
      @numbers = []
    end

    def get(*data)
      @numbers.concat( clean_input(data) )
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

    private
    # Clean input data
    #
    # @params [Numeric Array]
    #
    # @return [Array] with nums
    # @example
    #   clean_input(1) => [1]
    #   clean_input([1]) => [1]
    #   clean_input([1,[1,2]]) => [1,2,3]
    #   clean_input([1,2,"text",3) => [1,2,3]
    def clean_input(data)
      data = [data].flatten
      data.delete_if do |n|
        begin
          Kernel.Float(n)
          false
        rescue ArgumentError, TypeError
          true
        end
      end
    end

  end
end