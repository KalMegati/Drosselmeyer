class ApplicationController < ActionController::Base

    def welcome

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

end
