module ApplicationHelper

    def current_writer
        Writer.find_by(id: session[:writer_id])
    end

    def logged_in?
        !!current_writer
    end

end
