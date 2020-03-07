class EntitiesController < ApplicationController

    def new
        @entity = entity_class.new
    end 

    def create
        @entity = entity_class.new(entity_params)
        @entity.save
        redirect_to setting_entity_path(@entity.setting, @entity)
    end 

    def index 

    end

    def show
        @entity = entity_class.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy

    end

    def entity_class #to get the correct type of Entity as necessary
        entity = self.class.to_s
        entity.slice!("Controller")
        eval(entity.singularize)
    end

    def entity_params #to get strong params
        self.send(self.entity_class.to_s.downcase+"_params")
    end

end