class SessionsController < ApplicationController

    def new
        @writer = Writer.new
    end

    def create
        @writer = Writer.find_by(handle: login_params[:handle])
        if @writer.password == login_params[:password]
            session[:writer_id] = @writer.id
            redirect_to writer_path(@writer)
        else
            redirect_to signin_path
        end
    end

    def signout
        session.destroy
        redirect_to root_path
    end

    private

    def login_params
        params.require("writer").permit("handle", "password")
    end

end
