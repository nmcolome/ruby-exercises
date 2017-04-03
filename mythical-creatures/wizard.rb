class Wizard
  attr_reader :name, :beard

  def initialize(name, beard={bearded: true}, energy=true)
    @name = name
    @beard = beard
    @energy = energy
    @counter = 0
  end

  def bearded?
    beard[:bearded]
  end

  def incantation(powers)
    root_powers = "sudo"
    root_powers += " #{powers}"
    root_powers
  end

  def rested?
    @energy = false if @counter > 2
    @energy
  end

  def cast
    @counter += 1
    "MAGIC MISSILE!"
  end
end 