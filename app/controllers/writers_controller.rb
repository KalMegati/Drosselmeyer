class WritersController < ApplicationController

    before_action :verify_identity, only: :edit

    def verify_identity
        unless logged_in? and current_writer == Writer.find(params[:id])
            redirect_to faker_path
        end
    end

    def index
        @writers = Writer.all.sort_by { |writer| writer.icon }
    end

    def show
        @writer = Writer.find(params[:id])
    end

    def new
        @writer = Writer.new
    end

    def create
        @writer = Writer.new(writer_params)
        if @writer.save
            session[:writer_id] = @writer.id
            redirect_to writer_path(@writer)
        else
            render :new
        end
    end

    def edit
        @writer = Writer.find(params[:id])
    end

    def update
        @writer = Writer.find(params[:id])
        @writer.attributes=(writer_params)
        if @writer.save
            redirect_to writer_path(@writer)
        else
            render :edit
        end
    end

    def destroy
        @writer = Writer.find(params[:id])
    end

    private

    def writer_params
        params.require('writer').permit(:handle, :password, :password_confirmation, :icon)
    end

end