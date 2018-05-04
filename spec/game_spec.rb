require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:player_1) { double :player }
  subject(:player_2) { double :player }

  describe '#attack' do
    it 'should reduce the other player\'s hit points on attack' do
      expect(player_2).to receive(:damage_received)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'start as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end
end
