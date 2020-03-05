class CharactersController < EntitiesController

    def character_params
        params.require(:character).permit(:name, :blurb, :story)
    end

end
