require 'player'
describe Player do
  subject { described_class.new("Haz") }
  let(:player2) { described_class.new("Haz2") }
  describe '#name' do 
    it 'returns the player name' do
      expect(subject.name).to eq "Haz"
    end
  end

  describe '#receive_damage' do 
    it 'removes 10 hp' do
      subject.receive_damage
      expect(subject.hp).to eq 90
    end
  end
end
