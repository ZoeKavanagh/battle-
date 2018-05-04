
class Game

  attr_reader :current_turn, :other_turn, :damage_received

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @other_turn = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(other_player)
    other_turn.damage_received
    swiss_roll
  end

  def swiss_roll
    @current_turn, @other_turn = @other_turn, @current_turn
  end

end
