# Write your answer bellow
#
# Happy coding!!

class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
   "#{first_name} #{last_name}"
  end
end


class Player < Person

  def initialize(first_name, last_name, health=20, strength=5, alive=true)
    super(first_name, last_name)
    @health = health
    @strength = strength
    @alive = alive
  end

  def take_damage(attack_strength)
    @health - attack_strength
    if @health <=0
      @alive =false
    end
  end

  def attack(player)
    take_damage(attack_strength)
  end

end

class Knight < Player

  def initialize(first_name, last_name, alive, health=50, strength=7)
    super(first_name, last_name, alive, health, strength)
  end

  def take_damage(attack_strength)
    super
  end

  def attack(player)
    super
  end

end

class Wizard < Player
  def initialize(first_name, last_name, alive, health, strength=75)
    super(first_name, last_name, alive, health, strength)
  end

  def take_damage(strength)
    super
  end

  def attack(player)
    super
  end

end