class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: SightingSerializer.new(sightings).to_serializer_json
      end
     
    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sightings).to_serializer_json
    end
end
