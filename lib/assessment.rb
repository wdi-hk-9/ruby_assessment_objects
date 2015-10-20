# Write your answer bellow
#
# Happy coding!!
#
class Person
  def initialize(firstname,lastname,fullname)
    @first_name = firstname
    @last_name = lastname
    @full_name = fullname
  end
end

class Player < Person
  def initialize(firstname,lastname,fullname,health=20,strength=5,alive=true)
    super(firstname,lastname,fullname)
    @health = health
    @strength = strength
    @alive = alive
  end

  def strength
    @strength
  end

  def is_player_dead
    if @health <= 0
      @alive = false
    end
  end

  def take_damage(attack_strength)
    @health -= attack_strength
  end

  def attack(player)
    take_damage(player.strength)
  end
end

class Knight < Player
    attr_accessor :health, :strength, :alive
  def initialize(firstname,lastname,fullname,health=50,strength=7,alive=true)
    super
  end

end

class Wizard < Player
  attr_accessor :health, :strength, :alive
  def initialize(firstname,lastname,fullname,health,strength=75,alive)
    super
  end
end
