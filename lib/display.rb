def introduction
  print 'Hello welcome to the game Tic Tak Toe'
  puts 'Would you like to play a new game? press y if you do'
  start = gets.chomp
  until start.downcase == 'y'
    puts 'press y if you want to play'
    start = gets.chomp
  end
end

def player_name
  puts 'Hello please enter your name'
  name = gets.chomp.capitalize
  until name.match?(/\A[a-zA-Z'-]*\z/)
    puts 'please enter a valid name which includes only letters'
    name = gets.chomp
  end
  name
end

def player_symbol
  puts '1)press 1 to play as X'
  puts '2)press 2 to play as O'
  selection = gets.chomp
  while selection != '1' && selection != '2'
    puts 'wrong selection please re-enter'
    selection = gets.chomp
  end
  selection == '1' ? 'X' : 'O'
end
