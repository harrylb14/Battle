require 'game'
describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'removes damage from other player' do
      allow(player2).to receive(:receive_damage)
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end
end