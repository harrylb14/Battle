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
end