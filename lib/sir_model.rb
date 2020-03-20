require "sir_model/version"
require "ostruct"

module SirModel
  def self.new(eons:, susceptible:, infected:, resistant:, rate_si:, rate_ir:, population:)
    model = Model.new(
      eons: eons, 
      susceptible: susceptible, 
      infected: infected,
      resistant: resistant, 
      rate_si: rate_si, 
      rate_ir: rate_ir, 
      population: population  
    )

    OpenStruct.new(results: model.results)
  end

  class Error < StandardError; end
end
