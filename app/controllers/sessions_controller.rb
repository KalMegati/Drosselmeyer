class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token, only: :create

    def new
        @writer = Writer.new
    end

    def create
        if params["provider"] == "developer"
            if @writer = Writer.find_by(handle: params[:name])
                session[:writer_id] = @writer.id
                redirect_to writer_path(@writer)
            else
                @writer = Writer.new( handle: params[:name], password: rand.to_s, icon: rand(100..999).to_s )
                @writer.save
                session[:writer_id] = @writer.id
                redirect_to writer_path(@writer)
            end
        else
            @writer = Writer.find_by(handle: login_params[:handle])
            if @writer.authenticate(login_params[:password])
                session[:writer_id] = @writer.id
                redirect_to writer_path(@writer)
            else
                redirect_to signin_path
            end
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
