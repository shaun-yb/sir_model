require "sir_model/version"

module SirModel
  def self.new(eons:, susceptible:, infected:, resistant:, rate_si:, rate_ir:, population:)
    Model.new(
      eons: eons, 
      susceptible: susceptible, 
      infected: infected,
      resistant: resistant, 
      rate_si: rate_si, 
      rate_ir: rate_ir, 
      population: population  
    )
  end

  class Error < StandardError; end
end
