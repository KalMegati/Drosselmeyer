class ApplicationController < ActionController::Base
   
    def current_writer
        Writer.find_by(id: session[:writer_id])
    end

    def logged_in?
        !!current_writer
    end

    def require_writer
        unless logged_in?
            redirect_to hacker_path
        end
    end

    def verify_writer
        unless logged_in? and current_writer == entity_class.find(params[:id]).writer
            redirect_to faker_path
        end
    end

    def welcome

    end

    def hacker #redirect if unregistered user attempts to create

    end

    def faker #redirect if writer attempts to edit information that is not theirs

    end

    def entity_path(ent)
        self.send(entity_class.to_s.downcase+"_path", ent)
    end

    def entities_path
        self.send(entity_class.to_s.downcase+"s_path")
    end

    def setting_entity_path(set, ent)
        self.send("setting_" + entity_class.to_s.downcase + "_path", set, ent)
    end

    def setting_entities_path(set)
        self.send("setting_" + entity_class.to_s.downcase + "s_path", set)
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