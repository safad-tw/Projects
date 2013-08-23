require "./app/player.rb"
require "./app/dice.rb"
require "./app/snakePoints.rb"
require "./app/ladderPoints.rb"
require "test/unit"


class PlayerTest < Test::Unit::TestCase

  def test_should_get_dice_value_and_add_it_to_player_current_position

    #given
    player = Player.new()
    dice = Dice.new()
    snakePoints = SnakePoints.new()
    ladderPoints = LadderPoints.new()


    #when
    diceNumber = dice.getDiceNumber
    endPoint = snakePoints.findSnakeEndPoint(diceNumber)

    if endPoint == 0
      endPoint = ladderPoints.findLadderEndPoint(diceNumber)
    end

    if endPoint==0
      player.setPosition(player.currentPosition + diceNumber)
    else
      player.setPosition(endPoint)
    end


    #then
    assert_equal(4,player.currentPosition)

  end


end
