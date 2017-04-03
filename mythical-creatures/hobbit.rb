class Hobbit
  attr_reader :name, :disposition, :age, :shortness

  def initialize(name, disposition="homebody", age=0, shortness=true)
    @name = name
    @disposition = disposition
    @age = age
    @shortness = shortness
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    true if age >= 33
  end

  def old?
    true if age > 100
  end

  def has_ring?
    true if @name == "Frodo"
  end

  def is_short?
    shortness
  end
end