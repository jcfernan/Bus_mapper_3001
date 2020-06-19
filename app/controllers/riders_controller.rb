class RidersController < ApplicationController

    before_action :find_rider_by_id, only:[:show, :update, :destroy]
    
    def index
        @riders =Rider.all
        render json: @riders
    end

    def show
        render json: @rider
    end

    def create
        @rider = Rider.create(rider_params)
        render json: @rider
    end

    def update
        @rider.update(rider_params)
        render json: @rider
    end

    def destroy
        @rider.destroy
        redirect_to action: "index"
    end

private

    def rider_params
        params.require(:rider).permit(:name, :commute_time, :bus_id, :bus_pass)
    end

    def find_rider_by_id
        @rider = Rider.find(params[:id])
    end

end
