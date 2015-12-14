require_relative "../lib/finder"

RSpec.describe Finder do
  describe '#find_by_name' do
    let(:finder) { Finder.new }

    it "will return a friend hash with name of Tom Hanks" do
      result = finder.find_by_name("Tom Hanks")
      expect(result["name"]).to eq("Tom Hanks")
    end
  end
end

