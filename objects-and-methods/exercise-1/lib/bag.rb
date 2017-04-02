class Bag
  attr_reader :bag

  def initialize
    @bag = []
  end

  def empty?
    if bag.length == 0
      true
    else
      false
    end
  end

  def count
    bag.count
  end

  def candies
    bag
  end

end
