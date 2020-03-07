class SettingsController < ApplicationController

    def index
        @settings = Setting.all
    end

    def show
        @setting = Setting.find(params[:id])
    end

    def new
        @setting = Setting.new
        @setting.factions.build(name: "Neutral")
        @setting.factions.build(name: "Disputed")
        @setting.factions.build
    end

    def create
        @setting = Setting.new(setting_params)
        binding.pry
        if @setting.save
            redirect_to setting_path(@setting)
        else
            binding.pry
            redirect_to settings_path
        end
    end

    def edit
        @setting = Setting.find(params[:id])
    end

    def update
        @setting = Setting.find(params[:id])
        @setting.attributes=(setting_params)
        @setting.save
        redirect_to setting_path(@setting)
    end

    def destroy
        @setting = Setting.find(params[:id])
    end

    private

    def setting_params
        params.require('setting').permit(:title, :genre, :blurb, :story, :writer_id, factions_attributes: [
            :name, :blurb, :story, :writer_id
        ])
    end

end
