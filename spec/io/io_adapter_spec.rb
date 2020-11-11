require 'rspec'
require_relative '../../lib/basic/human'
require_relative '../../lib/basic/action'

describe 'IOAdapter' do
  let(:human) { Human.new }
  let(:path) { 'spec/resources/' }
  let(:io_adapter) { IOAdapter.new(path) }

  describe '.save_progress' do
    it 'should save progress' do
      FileUtils.rm_r(Dir["#{path}*"])
      expect(Dir["#{path}*.json"].length).to eq(0)
      io_adapter.save_progress(human)
      expect(Dir["#{path}*.json"].length).to eq(1)
      FileUtils.rm_r(Dir["#{path}*"])
    end
  end
end
