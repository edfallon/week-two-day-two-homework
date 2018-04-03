require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")

class BearTest < Minitest::Test

  def setup


   @bear1 = Bear.new("yogi")

  end

  def test_name()

    assert_equal("yogi", @bear1.name)

  end

  def test_stomach()
    assert_equal([], @bear1.stomach)
  end

end #end of class
