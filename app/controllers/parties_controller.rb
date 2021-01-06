class PartiesController < ApplicationController
    def index
        @parties = Party.order_by_date # order gets all
    end

    def show
        @party = Party.find(params[:id])
    end

    def new
        @party = Party.new
    end

    def create
        @party = Party.new(party_params)
        if @party.valid?
            @party.save
            redirect_to party_path(@party)
        else
            render :new
        end
    end


    private

    def party_params
        params.require(:party).permit(:name, :date, :budget, :private)
    end
    
end