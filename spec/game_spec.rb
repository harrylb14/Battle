require 'game'
describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject { described_class.new(player1, player2) }
  
  it 'accepts two player instances' do
    expect(subject.player1).to eq player1
    expect(subject.player2).to eq player2
  end

  describe '#attack' do
    it 'removes damage from player' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
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
end