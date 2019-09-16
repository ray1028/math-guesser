class Game

  attr_accessor :current_player

  def initialize 
    self.current_player = 1
  end

  def switch_player
    self.current_player == 1 ? self.current_player = 2 : self.current_player = 1
  end

  def generate_random_num 
    rand 1...20
  end

  def verify_answer(num1, num2, answer)
    if answer.to_i.is_a?(Integer) 
       result = (num1 + num2) == answer.to_i
    end
    result
  end

  def generate_question(num1, num2, name)
    puts "----- NEW TURN -----"
    puts "#{name}: What does #{num1} plus #{num2} equal?"
  end

  def print_score(player1_life, player2_life)
    puts "P1: #{player1_life}/3 vs P2: #{player2_life}\n\n"
  end

  def answer_result(correct, name)
    if correct
      puts "#{name}: YES, You are correct."
    else 
      puts "#{name}: Seriously? No !"
    end
  end

end