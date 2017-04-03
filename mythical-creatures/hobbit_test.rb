gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hobbit'

class HobbitTest < Minitest::Test
  def test_it_has_a_name
    hobbit = Hobbit.new("Bilbo")
    assert_equal "Bilbo", hobbit.name
  end

  def test_it_is_named_something_else
    # skip
    hobbit = Hobbit.new("Peregrin")
    assert_equal "Peregrin", hobbit.name
  end

  def test_disposition_is_unadventurous
    # skip
    hobbit = Hobbit.new("Samwise")
    assert_equal "homebody", hobbit.disposition
  end

  def test_can_have_a_different_disposition
    # skip
    hobbit = Hobbit.new("Frodo", "adventurous")
    assert_equal "adventurous", hobbit.disposition
  end

  def test_grows_older_when_celebrating_birthdays
    # skip
    hobbit = Hobbit.new('Meriadoc')
    assert_equal 0, hobbit.age
    5.times do
      hobbit.celebrate_birthday
    end
    assert_equal 5, hobbit.age
  end

  def test_is_considered_a_child_at_32
    # skip
    hobbit = Hobbit.new('Gerontius')
    32.times do
      hobbit.celebrate_birthday
    end
    refute hobbit.adult?
  end

  def test_comes_of_age_at_33
    # skip
    hobbit = Hobbit.new('Otho')
    33.times do
      hobbit.celebrate_birthday
    end
    assert hobbit.adult?

    # still adult, one year later
    hobbit.celebrate_birthday
    assert hobbit.adult?
  end

  def test_is_old_at_age_of_101
    # skip
    hobbit = Hobbit.new("Bilbo") # create a hobbitz
    101.times do # have hobbit age 101 years
      hobbit.celebrate_birthday
    end
    assert hobbit.old? # check that hobbit.old? returns true

  end

  def test_hobbit_has_the_ring_if_its_name_is_frodo
    # skip
    hobbit_1 = Hobbit.new("Frodo") # create a hobbit named Frodo
    hobbit_2 = Hobbit.new("Sam") # create a second hobbit named Sam
    assert hobbit_1.has_ring? # check that .has_ring? for Frodo returns true
    refute hobbit_2.has_ring? # check that .has_ring? for Sam returns false
  end

  def test_hobbits_are_short
    # skip
    hobbit = Hobbit.new("Frodo") # create a hobbit
    assert hobbit.is_short? # check that .is_short? returns true
  end

end

