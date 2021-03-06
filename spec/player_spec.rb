require 'player'
require 'game'

describe Player do
  subject(:name) { described_class.new('Zoe') }
  subject(:game) { Game.new(player_1, player_2) }
  subject(:player_1) { described_class.new('Charly') }
  subject(:player_2) { described_class.new('Zoe') }


  describe '#name' do
    it 'should return the player\'s name' do
      expect(subject.name).to eq 'Zoe'
    end
  end

  describe '#hit_points' do
    it 'should return the player\'s hit points' do
      allow(subject).to receive(:hit_points) { Player::HIT_POINTS }
      expect(subject.hit_points).to eq Player::HIT_POINTS
    end
  end

  describe '#damage_received' do
    # let(:game) { double :game, :player1,:player2}
    it 'reduces the hit points by damage amount' do
      allow(player_1).to receive(:damage_received)
      game.attack(player_2)
      expect(player_2.hit_points).to eq 50
    end
  end
end
