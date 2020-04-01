class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 3
  end
  
  def drop_point 
  @points -= 1
  end

end