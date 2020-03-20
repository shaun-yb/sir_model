RSpec.describe SirModel::Point do
    describe "#to_s" do
        let(:point) { described_class.new(infected: 1, susceptible: 1, resistant: 1, eon: 1 ) }

        it "returns the point in a stringified format" do
            expect(point.to_s).to eq("eon: 1 susceptible: 1 infected: 1 resistant: 1")
        end
    end
end