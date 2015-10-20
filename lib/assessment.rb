# Write your answer bellow

class Person
  attr_accessor :first_name , :last_name, :full_name
  def initialize (first_name, last_name, full_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
  end
end

class Player < Person
  attr_accessor :health , :strength, :alive
  def initialize (health, strength, alive)
    @health = health
    @strength = strength
    @alive = true
  end

  def take_damage(attack_strength)
    @health = @health - attack_strength
  end

  def attack(player)
    take_damage(player.strength)
  end
end

class Kinght < Player
  attr_accessor :health , :strength
  def initialize
    @health = 50
    @strength = 7
  end
end

class Wizard < Player
  attr_accessor :health , :strength
  def initialize
    @health = 20
    @strength = 75
  end
end

w = Wizard.new
k = Kinght.new
# Happy coding!!