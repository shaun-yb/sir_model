module SirModel
    class Point
        attr_reader :eon, :susceptible, :infected, :resistant
    
        def initialize(susceptible:, infected:, resistant:, eon:)
            @susceptible = susceptible
            @infected = infected
            @resistant = resistant
            @eon = eon
        end
    
        def to_s
            "eon: #{eon} susceptible: #{susceptible} infected: #{infected} resistant: #{resistant}"
        end
    
        def to_json
            {
                eon: eon,
                susceptible: susceptible,
                infected: infected,
                resistant: resistant
             }
        end
    end    
end
