# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
# there is one board with 9 squares
require_relative '../lib/table'
class Board
  include Table
  attr_reader :square

  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def condition1
    @square[0] == @square[1] && @square[0] == @square[2] ? true : false
  end

  def condition2
    @square[0] == @square[3] && @square[0] == @square[6] ? true : false
  end

  def condition3
    @square[0] == @square[4] && @square[0] == @square[8] ? true : false
  end

  def condition4
    @square[1] == @square[4] && @square[1] == @square[7] ? true : false
  end

  def condition5
    @square[2] == @square[5] && @square[2] == @square[8] ? true : false
  end

  def condition6
    @square[2] == @square[4] && @square[2] == @square[6] ? true : false
  end

  def condition7
    @square[3] == @square[4] && @square[3] == @square[5] ? true : false
  end

  def condition8
    @square[6] == @square[7] && @square[6] == @square[8] ? true : false
  end

  def victory
    if (condition1 || condition2) || (condition3 || condition4) || (condition5 || condition6) ||
       (condition7 || condition8)
      return true
    end

    false
  end

  def draw
    @square.each do |val|
      return false if val.is_a? Integer
    end
    true
  end
end
# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
