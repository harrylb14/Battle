require 'game'
describe Game do
  let(:player1) { double :player, hp: 100 }
  let(:player2) { double :player, hp: 100 }
  let(:loser) { double :player, hp: 0}
  subject { described_class.new(player1, player2) }
  let(:endgame) { described_class.new(player1, loser) }
  
  it 'accepts two player instances' do
    expect(subject.player1).to eq player1
    expect(subject.player2).to eq player2
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(subject.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do 
    it 'switches the turn' do 
      subject.switch_turns
      expect(subject.current_turn).to eq player2
    end
  end

  describe '#game_over?' do 
    it 'returns true if one or more players are on 0HP' do
      expect(endgame.game_over?).to be true
    end

    it 'returns false if no players are on 0 HP' do
      expect(subject.game_over?).to be false
    end
  end

  describe '#loser' do
    it 'returns the loser' do
      expect(endgame.loser).to eq loser
    end
  end
end