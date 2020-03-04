class WritersController < ApplicationController

    def index
        @writers = Writer.all
    end

    def show
        @writer = Writer.find(params[:id])
    end

    def new
        @writer = Writer.new
    end

    def create
        @writer = Writer.new(writer_params)
        @writer.save
        redirect_to writer_path(@writer)
    end

    def edit
        @writer = Writer.find(params[:id])
    end

    def update
        @writer = Writer.find(params[:id])
        @writer.attributes=(writer_params)
        @writer.save
        redirect_to writer_path(@writer)
    end

    def destroy
        @writer = Writer.find(params[:id])
    end

    private

    def writer_params
        params.require('writer').permit(:handle, :password, :icon)
    end

end
