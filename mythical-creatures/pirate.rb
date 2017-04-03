class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job="Scallywag", cursed=false, booty=0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
    @heinous_act = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_act += 1
    @cursed = true if @heinous_act > 2
  end

  def rob_ship
    @booty += 100
  end
end