require 'terminal-table'
module Table
  def create_table 
    table = Terminal::Table.new do |t|
      t << [self.square[0],self.square[1],self.square[2]]         
      t << :separator         
      t.add_row [self.square[3],self.square[4],self.square[5]]
      t.add_separator         
      t.add_row [self.square[6],self.square[7],self.square[8]]
      t.style = { :border_top => false, :border_bottom => false ,:border_left => false, :border_right => false }
    end
  end 
end
