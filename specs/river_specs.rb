require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")

class RiverTest < Minitest::Test


 def setup
  fish = ["bass", "salmon", "gold"]
  @river1 = River.new("Amazon", fish)
 end

 def test_get_name
  assert_equal("Amazon", @river1.name)
 end

 def test_get_fish
  assert_equal(["bass", "salmon", "gold"], @river1.fish)
 end

end #end of class
