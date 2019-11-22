class SeedsController < ApplicationController
    def index
        seeds = Seed.all
        render json: seeds
    end

    def create 
        # debugger

        seeds = params[:data].map do |seedInfo|

            Seed.create(seedInfo.permit(:name, :seed_num, :bracket_id))

            # Seed.create(
            #     name: seed[:name],
            #     seed_num: seed[:seed_num],
            #     bracket_id: seed[:bracket_id],
            # )
        end
        render json: seeds
        # if seed.save 
        #     render json: seed
        # else
        #     debugger
        # end
    end

    def edit 
        # seed = Seed.create(seed_params)
        # render json: seed
    end

    def destroy
        seed = Seed.find(params[:id])
        seed.destroy
        # render json: 
    end

    private

    def seed_params
        params.require(:seed).permit(:name, :seed_num, :bracket_id)
    end
end
