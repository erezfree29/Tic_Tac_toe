require_relative '../lib/player'
require_relative '../lib/board'

describe 'board' do
  board = Board.new()
  it"condition1" do
    board.square =['x','x', 'x', 4, 5, 6, 7, 8, 9]
    expect(board.condition1).to eql(true)
  end

  it"condition2" do
    board.square =['x', 2, 3, 'x', 5, 6, 'x', 8, 9]
    expect(board.condition2).to eql(true)
  end

  it"condition3" do
    board.square =['x', 2, 3, 4, 'x', 6, 7, 8, 'x']
    expect(board.condition3).to eql(true)
  end

  it"condition4" do
    board.square =[1, 'x', 3, 4, 'x', 6, 7, 'x', 9]
    expect(board.condition4).to eql(true)
  end

  it"condition5" do
    board.square =[1, 2, 'x', 4, 5, 'x', 7, 8, 'x']
    expect(board.condition5).to eql(true)
  end

  it"condition6" do
    board.square =[1, 2, 'x', 4, 'x', 6, 'x', 8, 9]
    expect(board.condition6).to eql(true)
  end

  it"condition7" do
    board.square =[1, 2, 3, 'x', 'x', 'x', 7, 8, 9]
    expect(board.condition7).to eql(true)
  end

  it"condition8" do
    board.square =[1, 2, 3, 4, 5, 6, 'x', 'x', 'x']
    expect(board.condition8).to eql(true)
  end
end