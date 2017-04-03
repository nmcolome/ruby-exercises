class Werewolf
  attr_reader :name, :location, :human, :hungry
  
  def initialize(name, location="El Salvador", human=true, hungry=false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry
  end

  def human?
    @human
  end

  def change!
    @human = !human
    @hungry = !hungry
  end

  def wolf?
    !human
  end

  def consume(victim)
    if @human == false
      victim.status = :dead
      @hungry = false
    end
  end
end
