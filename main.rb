require "./player"
require "./game"

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

game = Game.new

loop do
  num1 = game.generate_random_num()
  num2 = game.generate_random_num()

  if player1.life == 0 || player2.life == 0 
    puts "----- GAME OVER -----"
    puts "Good Bye"
    break
  end

  if game.current_player == 1 
    player_name = player1.name
  else 
    player_name = player2.name
  end

  game.generate_question(num1, num2, player_name)
  
  answer = gets.chomp

  is_correct = game.verify_answer(num1, num2, answer)
  
  game.answer_result(is_correct, player_name)

  if is_correct == false
    if player_name == 1
      player1.life -= 1
    else 
      player2.life -= 1
    end
  end

  game.print_score(player1.life, player2.life)
  
  game.switch_player()
end
