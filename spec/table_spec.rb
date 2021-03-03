require_relative '../lib/board'
require_relative '../lib/table'
describe Table do
  describe 'create table' do
    it 'check that a table is created correctly in accordance with the board' do
      board = Board.new
      board.square[0] = 'O'
      board.square[1] = 'O'
      board.square[2] = 'X'
      board.square[3] = 'O'
      board.square[4] = 'X'
      board.square[5] = 'O'
      board.square[6] = 'O'
      board.square[7] = 'X'
      board.square[8] = 1
      table = board.create_table
      expect { print table }.to output(" O | O | X\n---+---+---\n O | X | O\n---+---+---\n O | X | 1").to_stdout
    end
  end
end
