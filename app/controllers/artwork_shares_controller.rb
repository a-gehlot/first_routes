class ArtworkSharesController < ApplicationController
    def create
        shares = ArtworkShare.new(artwork_shares_params)
        if shares.save
            render json: shares
        else
            render json: shares.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        shares = ArtworkShare.find(params[:id])
        shares.destroy
        render json: shares
    end

    def artwork_shares_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end
end