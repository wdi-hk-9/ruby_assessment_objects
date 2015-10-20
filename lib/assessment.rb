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
    @health -= attack_strength
    if @health <=0
      @alive = false
    end
    return @health
  end

  def attack(player)
    player.take_damage(@strength)
  end
end

class Kinght < Player
  def initialize
    @health = 50
    @strength = 7
    @alive = true
  end
end

class Wizard < Player
  def initialize
    @health = 20
    @strength = 75
    @alive = true
  end
end

w = Wizard.new
k = Kinght.new
k.attack(w)
# Happy coding!!