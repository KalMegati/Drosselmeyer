class SettingsController < ApplicationController

    before_action :require_writer, only: :new
    before_action :verify_writer, only: :edit

    def index
        if params["search"]
            setting = Setting.find_by(title: params["search"])
            @settings = [setting]
            # binding.pry
        else
            @settings = Setting.all
        end
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
        #binding.pry
        if @setting.save
            redirect_to setting_path(@setting)
        else
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
        @setting.destroy
        redirect_to settings_path
    end

    private

    def setting_params
        params.require('setting').permit(:title, :genre, :high_concept, :story, :writer_id, factions_attributes: [
            :name, :blurb, :story, :writer_id
        ])
    end

    

end
