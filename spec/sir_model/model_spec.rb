RSpec.describe SirModel::Model do
    describe "#results" do
        let(:model) do
            described_class.new(
                eons: eons,
                infected: 1,
                susceptible: 1,
                resistant: 1,
                rate_si: 0.01,
                rate_ir: 0.05
            )
        end

        context "when a custom population is inserted into a model" do
            let(:model_1) do
                described_class.new(
                    eons: 1,
                    infected: 1,
                    susceptible: 1,
                    resistant: 1,
                    rate_si: 0.01,
                    rate_ir: 0.05,
                    population: 10000    
                )
            end

            let(:model_2) do
                described_class.new(
                    eons: 1,
                    infected: 1,
                    susceptible: 1,
                    resistant: 1,
                    rate_si: 0.01,
                    rate_ir: 0.05,
                )
            end
    
            it "gives a different infected result then a model without a population" do
                expect(model_1.results[1][:infected]).not_to eq(model_2.results[1][:infected])
            end
        end

        context "when the eons is zero" do
            let(:eons) { 0 }

            it "returns 1 for the infected, susceptible, and resistant fields" do
                expect(model.results).to eq([ { eon: 0, infected: 1, susceptible: 1, resistant: 1 } ])
            end
        end

        context "when the eons is less than 0" do
            let(:eons) { -1 }

            it "raises an error" do
                expect { model.results }.to raise_error
            end
        end

        context "test case 1" do
            let(:model) do
                described_class.new(
                    eons: 5,
                    infected: 50,
                    susceptible: 950,
                    resistant: 0,
                    rate_si: 0.05,
                    rate_ir: 0.01
                )
            end

            let(:results) { model.results }

            it "sets the 0th eon correctly" do
                eon = results[0]
                expect(eon[:eon]).to eq(0)

                expect(eon[:susceptible]).to eq(950)
                expect(eon[:infected]).to eq(50)
                expect(eon[:resistant]).to eq(0)
            end

            it "sets the 1st eon correctly" do
                eon = results[1]
                expect(eon[:eon]).to eq(1)

                expect(eon[:susceptible].round(6)).to eq(947.625)
                expect(eon[:infected].round(6)).to eq(51.875)
                expect(eon[:resistant].round(6)).to eq(0.5) 
            end

            it "sets the 2nd eon correctly" do
                eon = results[2]
                expect(eon[:eon]).to eq(2)

                expect(eon[:susceptible].round(6)).to eq(945.167098)
                expect(eon[:infected].round(6)).to eq(53.814152)
                expect(eon[:resistant].round(6)).to eq(1.018750) 
            end
        end
    end
end
