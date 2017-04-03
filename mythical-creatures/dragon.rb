class Dragon
  attr_reader :name, :color, :rider
  
  def initialize(name, color, rider, hunger=true)
    @name = name
    @color = color
    @rider = rider
    @hunger = hunger
    @meals = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @meals += 1
    @hunger = false if @meals >=3
  end
end