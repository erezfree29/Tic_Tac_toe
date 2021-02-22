# there is one board with 9 squares
class Board
  attr_reader :square

  def initialize
    @square = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end
end
