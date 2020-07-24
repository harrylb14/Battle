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
    it 'removes random hp' do
      srand(67809)
      subject.receive_damage
      expect(subject.hp).to eq 82
    end
  end

  describe '#receive_paralysis' do
    it 'sets paralysis attribute to be true' do
      subject.receive_paralysis
      expect(subject.paralyzed).to eq true
    end
  end
end
