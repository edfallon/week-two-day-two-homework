class Bear

  def initialize(name)
   @name = name
   @stomach = []
  end

  def name()
    return @name

  end

  def stomach()
    return @stomach
  end

  def take_fish(fish, river)
    @stomach.push(fish)
   river.lose_fish(fish)
  end

end #end of class
