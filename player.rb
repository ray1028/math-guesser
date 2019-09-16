class Player
  attr_accessor :life, :name

  def initialize(name)
    self.name = name
    self.life = 3
  end

  def deduct_life 
    if self.life > 0 then
      self.life -= 1
    end
  end

end