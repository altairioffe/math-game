require "./Player"


def start_game

  puts "\nPlayer 1, ENTER YOUR NAME"
  print "> "

  player1_name = gets.chomp
  $player1 = Player.new(player1_name)

  puts "\nPlayer 2, ENTER YOUR NAME"
  print "> "

  player2_name = gets.chomp
  $player2 = Player.new(player2_name)
  
end

def ready?

  puts "\nPOP QUIZ!!!"
  puts "ARE"
  puts "YOU READY?!!!!!"

  response = gets.chomp
  return response == "yes" || false

end

def confirm_ready
  if ready?
  else !ready?
    until ready? do
      ready?
    end
  end
end

def create_problem

  num1 = rand(5)
  num2 = rand(5)

  puts "#{num1} + #{num2} = "
  print "> "
  answer = gets.chomp.to_i

  if answer != num1 + num2
    return false
  else return true
  end
end


def play_round(player)

  puts "\n#{player.name}: "
  if create_problem == false
    player.drop_point
  end

  puts "\n#{player.name} points: #{player.points}"

  if player.points <1
      puts "#{player.name} LOSES!"
      exit
  end
end

def play_game

  until $player1.points == 0 || $player2.points == 0 do 
    play_round($player1)
    play_round($player2)
  end
end