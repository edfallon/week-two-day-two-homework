require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < Minitest::Test


 def setup
   @fish1 = Fish.new("bass")
   @fish2 = Fish.new("salmon")
   @fish3 = Fish.new("gold")

  fish_array = [@fish1, @fish2, @fish3]
  @river1 = River.new("Amazon", fish_array)
 end

 def test_get_name
  assert_equal("Amazon", @river1.name)
 end

 def test_get_fish
  assert_equal([@fish1, @fish2, @fish3], @river1.fish)
 end

 def test_lose_fish()
   @river1.lose_fish(@fish1)
   p @river1.fish
   assert_equal([@fish2, @fish3], @river1.fish)
 end

end #end of class
