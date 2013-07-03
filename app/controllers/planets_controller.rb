class PlanetsController < ApplicationController
    def index
        @planets =Planet.all# Planet.potentially_habitable
    end

    def show
        @planet = Planet.find(params[:id])
    end
    def new
        @planet = Planet.new
    end

    def create
        @planet = Planet.new(params[:planet])
        @planet.save
        redirect_to @planet
    end

    def edit
        @planet = Planet.find(params[:id])
    end
    def update
        @planet = Planet.find(params[:id])
        @planet.update_attributes(params[:planet])
        redirect_to @planet
    end

    def destroy
        @planet = Planet.find(params[:id])
        @planet.destroy
        redirect_to @planet
    end
end

#Remember Fat models... Thin controllers.