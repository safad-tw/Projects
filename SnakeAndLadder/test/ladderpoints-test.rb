require "test/unit"
require "./app/ladderPoints.rb"

class LadderPointsTest < Test::Unit::TestCase

  def test_should_give_ladder_end_point

    ladderPoints=ladderPoints.new()

    ladderEndPoint=ladderPoints.findLadderEndPoint(20)

    assert_equal(5,ladderEndPoint)

  end


end
