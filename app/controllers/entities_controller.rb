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
        @entity_class = entity_class
        @entities = Setting.find(params[:setting_id]).entities(@entity_class)
    end

    def show
        @entity = entity_class.find(params[:id])
    end

    def edit
        @entity = entity_class.find(params[:id])
    end

    def update
        @entity = entity_class.find(params[:id])
        @entity.attributes=(entity_params)
        @entity.save
        redirect_to setting_entity_path(@entity.setting, @entity)
    end

    def destroy
        @entity = entity_class.find(params[:id])
        @entity.destroy
        redirect_to setting_entities_path(params[:id])
    end

end