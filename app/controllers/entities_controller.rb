class EntitiesController < ApplicationController

    def new
        @entity = entity_class.new
    end 

    def create
        @entity = entity_class.new(paramify)
        binding.pry
        redirect_to root_path
    end 

    def index 

    end

    def show

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

    def paramify #to get strong params
        self.send(self.entity_class.to_s.downcase+"_params")
    end

    def entity_path(id)
        self.send(entity_class.to_s.downcase+"_path", id)
    end

    def entities_path
        self.send(entity_class.to_s.downcase+"s_path")
    end

end