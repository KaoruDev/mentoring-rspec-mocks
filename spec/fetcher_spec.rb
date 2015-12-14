require_relative "../lib/fetcher"

RSpec.describe Fetcher do
  describe '#as_a_list' do
    let(:fetcher) { Fetcher.new }

    it "returns an array of friends" do
      expect(fetcher.as_a_list).to be_a(Array)
    end

  end
end
