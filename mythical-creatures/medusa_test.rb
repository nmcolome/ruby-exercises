gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
    
    victim_2 = Person.new("Andromeda")
    refute victim_2.stoned?
    medusa.stare(victim_2)
    assert victim_2.stoned?
    
    victim_3 = Person.new("Polydectes")
    refute victim_3.stoned?
    medusa.stare(victim_3)
    assert victim_3.stoned?
    
    assert_equal 3, medusa.statues.count
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
    
    victim_2 = Person.new("Andromeda")
    refute victim_2.stoned?
    medusa.stare(victim_2)
    assert victim_2.stoned?
    
    victim_3 = Person.new("Polydectes")
    refute victim_3.stoned?
    medusa.stare(victim_3)
    assert victim_3.stoned?
    
    victim_4 = Person.new("Phineus")
    refute victim_4.stoned?
    medusa.stare(victim_4)
    assert victim_4.stoned?

    refute victim.stoned?
    assert_equal 3, medusa.statues.count
    output = [medusa.statues.first.name, medusa.statues[1].name, medusa.statues.last.name]
    assert_equal ["Andromeda", "Polydectes", "Phineus"], output
  end

end
