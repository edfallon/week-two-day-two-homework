require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < Minitest::Test

  def setup
   @fish1 = Fish.new("bass")
   @fish2 = Fish.new("salmon")
   @fish3 = Fish.new("gold")

  end

  def test_name
    assert_equal("bass", @fish1.name)
  end


end #end of class
