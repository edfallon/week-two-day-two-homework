require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < Minitest::Test

  def setup


   @bear1 = Bear.new("yogi")

   @fish1 = Fish.new("bass")
   @fish2 = Fish.new("salmon")
   @fish3 = Fish.new("gold")

  fish_array = [@fish1, @fish2, @fish3]
  @river1 = River.new("Amazon", fish_array)

  end

  def test_name()

    assert_equal("yogi", @bear1.name)

  end

  def test_stomach()
    assert_equal([], @bear1.stomach)
  end

  def test_take_fish()
    @bear1.take_fish(@fish1 , @river1)
    p @bear1.stomach
   assert_equal([@fish1], @bear1.stomach)
   assert_equal([@fish2, @fish3], @river1.fish)
  end



end #end of class
