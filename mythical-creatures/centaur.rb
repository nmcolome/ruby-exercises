class Centaur
  attr_reader :name, :breed

  def initialize(name, breed, cranky=false, standing=true)
    @name = name
    @breed = breed
    @cranky = cranky
    @standing = standing
    @count = 0
  end

  def shoot
    @count += 1
    if @count < 3 && @standing
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @count += 1
    if @count < 3 && @standing
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    @cranky = true if @count == 3
  end

  def standing?
    @standing
  end

  def sleep
    @cranky = false
    @count = 0
    "NO!" if @standing
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if @standing == true && @count != 0
      @cranky = false
      @count = 0
      "Glup"
    elsif
      @standing == true && @count == 0
      "Vomits"
    else
      "NO!"
    end
  end
  
end