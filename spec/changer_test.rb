require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_get_quarters_back
    assert_equal([[25]], Changer.run(25))
  end

  def test_get_quarter_and_a_dime_back
    assert_equal([[25], [10]], Changer.run(35))
  end

  def test_other_amts
    assert_equal([[25], [10], [5], [1]], Changer.run(41))
    assert_equal([[25], [25], [25], [5], [1], [1]], Changer.run(82))
    assert_equal([[25], [25], [10], [5], [1]], Changer.run(66))
  end
end
