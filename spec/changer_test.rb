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

end
