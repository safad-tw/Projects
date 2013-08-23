require "./app/ladderPoint.rb"

class LadderPoints


  def initialize()
    @ladders = []
    self.addLadderPoint(LadderPoint.new(8,42))
    self.addLadderPoint(LadderPoint.new(22,52))
    self.addLadderPoint(LadderPoint.new(42,81))
    self.addLadderPoint(LadderPoint.new(56,99))
    self.addLadderPoint(LadderPoint.new(77,92))

  end


  def addLadderPoint(ladderPoint)
    self << ladderPoint
  end

  def findLadderEndPoint(point)
    self.each do |ladderPoint|
      return ladderPoint.endPoint if ladderPoint.startPoint == point
    end
    return 0
  end

end

