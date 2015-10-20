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
  def initialize(health=20,strength=5,alive=true)
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
  def initialize(health=50,strength=7)
    @health = health
    @strength = strength
  end
end

class Wizard < Player
  def initialize(health=20,strength=75)
    @health = health
    @strength = strength
  end
end