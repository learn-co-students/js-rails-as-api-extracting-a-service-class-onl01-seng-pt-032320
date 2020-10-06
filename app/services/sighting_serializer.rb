class SightingSerializer
    #initialize method to set up any instance variables that we might want to share over multiple methods
    #initialize will take in whatever variable we're dealing with in a particular action, and store it as an instance variable
    def initialize(sighting_object)
        @sighting = sighting_object
      end

      #second step is to write a method that will call to_json on this instance variable, 
        #handling the inclusion and exclusion of attributes, and return the results
        # def to_serialized_json
        #     @sighting.to_json(:include => {
        #       :bird => {:only => [:name, :species]},
        #       :location => {:only => [:latitude, :longitude]}
        #     }, :except => [:updated_at])
        #   end

        #cleaned up
          def to_serialized_json
            options = {
              include: {
                bird: {
                  only: [:name, :species]
                },
                location: {
                  only: [:latitude, :longitude]
                }
              },
              except: [:updated_at],
            }
            @sighting.to_json(options)
          end
end 