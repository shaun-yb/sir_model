RSpec.describe SirModel do
  it "has a version number" do
    expect(SirModel::VERSION).not_to be nil
  end

  describe "#new" do
    it "creates a new OpenStruct" do
      model = SirModel.new(
        eons: 1, 
        susceptible: 2, 
        infected: 3,
        resistant: 4, 
        rate_si: 5, 
        rate_ir: 6, 
        population: 7    
      )
      

      expect(model).to be_a(OpenStruct)
      expect(model.results).to be_a(Array)
    end
  end
end
