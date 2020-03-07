class CharactersController < EntitiesController

    private

    def character_params
        params.require(:character).permit(:name, :blurb, :story, :writer_id, :setting_id, :faction_id)
    end

end
