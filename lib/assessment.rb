class Person

  def initialize (first_name, last_name, full_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
  end

end


class Player < Person

  attr_accessor :health

  def initialize (health=20, strength=5, alive=true)
    @health = health
    @alive = alive
    super
  end

  def take_damage(attack_strength)
    health -= attack_strength
  end

  def attack(player)

  end

end


class Knight < Player






