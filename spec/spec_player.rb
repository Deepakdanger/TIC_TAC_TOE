include RSpec
require_relative '../lib/player'
require 'rspec'

describe Player do
  player = Player.new
  describe 'name_check method ' do
    let(:per) { '' }
    it 'should return false is person1 length = 0' do
      expect(player.name_check(per)).not_to be true
    end
  end
  describe 'name_check method ' do
    let(:per) { 'DEEP' }
    it 'should accept player length > 0' do
      expect(player.name_check(per)).to be true
    end
  end
end
