class Unicorn
  attr_reader :name, :color
  
  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    is_white = false
    is_white = true if color == "white"
    is_white
  end
  
  def say(message)
    "**;* #{message} **;*"
  end
end