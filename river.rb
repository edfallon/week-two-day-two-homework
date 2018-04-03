class River

  def initialize(name, fish)
   @name = name
   @fish = fish
  end

  def name()
    return @name
  end

  def fish()
    return @fish
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end

  def fish_count()
    return @fish.count
  end

end # end of class
