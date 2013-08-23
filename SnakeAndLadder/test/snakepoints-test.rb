require "test/unit"
require "./app/snakePoints.rb"

class SnakePointsTest < Test::Unit::TestCase

  def test_should_give_snake_end_point

    snakePoints=SnakePoints.new()

    snakeEndPoint=snakePoints.findSnakeEndPoint(20)

    assert_equal(5,snakeEndPoint)

  end


end
