require 'player'

describe Player do
let(:kie) { Player.new('Kie') }
let(:jackie) { Player.new('Jackie') }

  describe '#name' do
    it 'returns player name' do
      expect(kie.name).to eq 'Kie'
    end
  end

  describe 'player has hit points' do
    it 'returns hit points' do
      expect(kie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end


end
end
