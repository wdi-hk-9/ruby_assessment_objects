class Person
  attr_accessor :first_name, :last_name

  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = first_name + last_name
  end
end

class Player < Person
  attr_accessor :health, :strength, :alive

  def initialize(health, strength, alive)
    @health = 20
    @strength = 5
    @alive = true
  end

  def take_damage(attack_strength)
    @health -= attack_strength
  end

  def attack(player)
    player.take_damage(@strength)
  end

  def live
    if @health <= 0
      @alive == false
    else
      @alive == true
    end
  end
end

class Knight < Player
  attr_accessor :health, :strength, :alive
  def initialize
    @health = 50
    @strength = 7
    @alive = true
  end
end

class Wizard < Player
  attr_accessor :health, :strength, :alive
  def initialize
    @health = 20
    @strength = 75
    @alive = true
  end
end

knight1 = Knight.new
wizard1 = Wizard.new