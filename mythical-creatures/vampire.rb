class Vampire
  attr_reader :name, :pet, :drinking
  
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
  end

  def thirsty?
    thirsty = true
    thirsty = false if drinking == true
    thirsty
  end

  def drink
    @drinking = true
  end
end