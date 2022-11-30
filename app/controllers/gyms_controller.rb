class GymsController < ApplicationController


    def show 
        gym = find_gym
        if gym 
            render json: gym, status: :ok
        else 
            render json: { error: "Gym not found" }, status: :not_found 
        end
    end 

    def destroy
        
    end
    private

    def find_gym
        gym = Gym.find(params[:id])
    end
end
