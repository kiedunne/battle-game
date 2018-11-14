require 'player'

describe Player do

let(:jackie) { Player.new('Jackie') }
let(:kie) { Player.new('Kie') }

  describe '#name' do
    it 'returns player name' do
      expect(kie.name).to eq 'Kie'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(kie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points' do
      expect { kie.receive_damage }.to change { kie.hit_points }.by(-10)
    end
  end

end
