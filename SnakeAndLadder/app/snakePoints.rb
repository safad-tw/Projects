require "./app/snakePoint.rb"

class SnakePoints<Array

  def initialize()
    self.addSnakePoint(SnakePoint.new(25,4))
    self.addSnakePoint(SnakePoint.new(40,12))
    self.addSnakePoint(SnakePoint.new(58,35))
    self.addSnakePoint(SnakePoint.new(88,55))
    self.addSnakePoint(SnakePoint.new(95,44))
  end



  def addSnakePoint(snakePoint)
    self << snakePoint
  end



  def findSnakeEndPoint(point)
    self.each do |snakePoint|
      return snakePoint.endPoint if snakePoint.startPoint == point
    end
    return 0
  end


end
