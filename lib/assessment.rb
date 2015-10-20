# Write your answer bellow
class Person
  attr_accessor :first_name , :last_name, :full_name
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = @first_name + " " + @last_name
  end
end

class Player < Person
  attr_accessor :health , :strength, :alive
  def initialize (first_name, last_name, health = 20, strength = 5, alive = true)
    super(first_name, last_name)
    @health = health
    @strength = strength
    @alive = alive
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
  def initialize(first_name, last_name, health=50 ,strength=7, alive=true)
    super
  end
end

class Wizard < Player
  attr_accessor :health, :strength, :alive
  def initialize(first_name, last_name, health =20, strength=75, alive=true)
      super
  end
end
# Happy coding!!