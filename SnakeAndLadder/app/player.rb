class Player

  attr_reader :currentPosition

  def initialize()
    @currentPosition = 0
  end


  def setPosition(position)
    @currentPosition = position
    puts "current position {#{currentPosition}"
  end

end


