class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    first_name + " " + last_name
  end
end

class Player < Person
  attr_reader :health, :strength
  attr_accessor :alive

  def initialize(first_name, last_name, health =20, strength=5, alive=true)
    super(first_name, last_name)
    @health = health
    @strength=strength
    @alive=alive
  end

  def take_damage(attack_strength)
  	@health = [@health - attack_strength, 0].max
  end

  def attack(player)
  	player.take_damage(@strength)
  end
end

class Knight < Player
  attr_reader :health, :strength
  attr_accessor :alive

  def initialize(first_name, last_name, health =50, strength=7, alive=true)
     super
  end
end

class Wizard < Player
  attr_reader :health, :strength
  attr_accessor :alive

  def initialize(first_name, last_name, health =20, strength=75, alive=true)
      super
  end
end
