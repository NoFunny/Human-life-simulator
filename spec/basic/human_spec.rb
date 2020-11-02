require 'rspec'
require_relative '../../lib/basic/human'

describe 'Human' do
  let(:with_arg) { Human.new('John Doe') }
  let(:without_arg) { Human.new }

  describe 'initialize' do
    context 'when transferring arguments' do
      it 'should setting name' do
        expect(with_arg.name).to eq('John Doe')
        expect(with_arg.health).to eq(100)
        expect(with_arg.mana).to eq(0)
        expect(with_arg.happiness).to eq(0)
        expect(with_arg.tired).to eq(0)
        expect(with_arg.money).to eq(100)
        expect(with_arg.alive).to be true
      end
    end

    context 'when not transferring arguments' do
      it 'should setting default values' do
        expect(with_arg.name).to eq('John Doe')
        expect(with_arg.health).to eq(100)
        expect(with_arg.mana).to eq(0)
        expect(with_arg.happiness).to eq(0)
        expect(with_arg.tired).to eq(0)
        expect(with_arg.money).to eq(100)
        expect(with_arg.alive).to be true
      end
    end
  end
end
