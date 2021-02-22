# lib/tic_tac_toe/cell.rb
class Cell
  attr_accessor :value

  def initialize(value = '')
    @value = value
  end
end
