class Medusa
  attr_reader :name
  
  def initialize(name)
    @name = name
    @statues = []
  end

  def statues
    @statues
  end

  def stare(victim)
    victim.stoned = true
    if @statues.count == 3
      @statues.shift.stoned = false
      @statues << victim
    elsif
      @statues << victim
    end
  end

end

class Person
  attr_reader :name 
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end