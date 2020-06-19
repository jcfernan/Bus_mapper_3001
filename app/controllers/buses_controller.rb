class BusesController < ApplicationController

        before_action :find_bus_by_id, only:[:show, :update, :destroy]
    
        def index
            @buses =Bus.all
            render json: @buses
        end
    
        def show
            render json: @bus
        end
    
        def create
            @bus = Bus.create(bus_params)
            render json: @bus
        end
    
        def update
    
        end
    
        def destroy
    
    end
    
    private
    
        def bus_params
            params.require(:bus).permit(:tag, :current_route, :driver, :capacity)
        end
    
        def find_bus_by_id
            @bus = Bus.find(params[:id])
        end
    
end
       
    
    # {
    #     "bus": {
    #         "tag":"Bussy",
    #         "current_route": "32nd/72nd",
    #         "driver": "Chuck",
    #         "capacity": 64
    #     }
    # }

