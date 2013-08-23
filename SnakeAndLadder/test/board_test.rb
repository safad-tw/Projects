require "test/unit"
require "./app/board.rb"

class BoardTest < Test::Unit::TestCase

  def test_should_return_snakepoints_count

    board=Board.new()

    snackePointsCount = board.snakePoints.length

    assert_equal(5,snackePointsCount)

  end

end
