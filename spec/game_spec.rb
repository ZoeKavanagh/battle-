require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:player_1) { double :player_1, damage_received: 0 }
  subject(:player_2) { double :player_2, damage_received: 0 }

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

  describe '#swiss_roll' do
    # subject(:current_turn) { double :player_1 }
    # subject(:other_turn) { double :player_2 }
    it 'changes to other turn after player 1' do
      game.attack(player_2)
      expect(game.current_turn).to eq player_2
    end
  end
end
