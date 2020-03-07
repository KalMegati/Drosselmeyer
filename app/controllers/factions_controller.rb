class FactionsController < EntitiesController

    private

    def faction_params
        params.require(:faction).permit(:name, :blurb, :story, :writer_id, :setting_id)
    end

end
