# Write your answer bellow
#
# Happy coding!!

class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def info
    puts "-"*40
    puts full_name
  end
end

class Player < Person
  attr_accessor :health, :strength, :alive

  def initialize(first_name, last_name, health=20, strength=2, alive=true)
    super(first_name, last_name)
    @health   = health
    @strength = strength
    @alive    = alive
  end

  def attack(player)
    puts "#{full_name} attacks #{player.full_name}"
    player.take_damage(self.strength)
  end

  def info
    super
    puts "Health:   #{@health}"
    puts "Strength: #{@strength}"
    puts "Alive:    #{@alive}"
  end

  protected
  def take_damage(attack_strength)
    self.health -= attack_strength if @health > 0
    @alive = false if @health <= 0
  end
end

class Knight < Player
  def initialize(first_name, last_name, health=50, strength=7, alive=true)
    super(first_name, last_name)
    @health   = health
    @strength = strength
    @alive    = alive
  end
end

class Wizard < Player
  def initialize(first_name, last_name, health=20, strength=75, alive=true)
    super(first_name, last_name)
    @health   = health
    @strength = strength
    @alive    = alive
  end
end

denis = Knight.new("Denis", "Cheung")
# denis.first_name = "Denis"
# denis.last_name  = "Cheung"
denis.info

fer   = Wizard.new("Fer", "Martin")
# fer.first_name = "Fer"
# fer.last_name  = "Martin"
fer.info

puts
puts "LET THE NERD BATTLE BEGIN"
puts

denis.attack(fer)
fer.info

fer.attack(denis)
denis.info