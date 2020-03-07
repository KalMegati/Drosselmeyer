class LocationsController < EntitiesController

    private

    def location_params
        params.require(:location).permit(:name, :blurb, :story, :writer_id, :setting_id, :faction_id)
    end

end
