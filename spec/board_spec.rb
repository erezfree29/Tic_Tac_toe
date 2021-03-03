require_relative '../lib/board'
describe Board do
  describe 'create board with square' do
    it 'check that a board with a square is created' do
      board = Board.new
      expect(board.square).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
  describe 'victory' do
    it 'check that the method returns true when condition one is met' do
      board = Board.new
      board.square[0] = 'X'
      board.square[1] = 'X'
      board.square[2] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition two is met' do
      board = Board.new
      board.square[0] = 'O'
      board.square[3] = 'O'
      board.square[6] = 'O'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition three is met' do
      board = Board.new
      board.square[0] = 'O'
      board.square[4] = 'O'
      board.square[8] = 'O'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition four is met' do
      board = Board.new
      board.square[1] = 'X'
      board.square[4] = 'X'
      board.square[7] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition five is met' do
      board = Board.new
      board.square[2] = 'X'
      board.square[5] = 'X'
      board.square[8] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition six is met' do
      board = Board.new
      board.square[2] = 'X'
      board.square[4] = 'X'
      board.square[6] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition seven is met' do
      board = Board.new
      board.square[3] = 'X'
      board.square[4] = 'X'
      board.square[5] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns true when condition eight is met' do
      board = Board.new
      board.square[6] = 'X'
      board.square[7] = 'X'
      board.square[8] = 'X'
      expect(board.victory).to be true
    end
    it 'check that the method returns false when no condition eight is met' do
      board = Board.new
      board.square[6] = 'O'
      board.square[7] = 'X'
      board.square[8] = 'X'
      expect(board.victory).to be false
    end
  end
  describe 'draw' do
    it 'check that method returns true when board is full of symbols' do
      board = Board.new
      board.square[0] = 'O'
      board.square[1] = 'O'
      board.square[2] = 'X'
      board.square[3] = 'O'
      board.square[4] = 'X'
      board.square[5] = 'O'
      board.square[6] = 'O'
      board.square[7] = 'X'
      board.square[8] = 'X'
      expect(board.draw).to be true
    end
    it 'check that method returns false when board has a number on it' do
      board = Board.new
      board.square[0] = 'O'
      board.square[1] = 'O'
      board.square[2] = 'X'
      board.square[3] = 'O'
      board.square[4] = 'X'
      board.square[5] = 'O'
      board.square[6] = 3
      board.square[7] = 2
      board.square[8] = 1
      expect(board.draw).to be false
    end
  end
end
