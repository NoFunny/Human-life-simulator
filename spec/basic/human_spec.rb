require 'rspec'
require_relative '../../lib/basic/human'

describe Human do
  let(:human) { Human.new('Pasha') }

  it 'must be assign name' do
    expect(human.name).to eq 'Pasha'
  end
end
