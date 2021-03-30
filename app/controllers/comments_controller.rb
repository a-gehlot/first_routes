class CommentsController < ApplicationController
    def index
        if user = params[:user_id]
            render json: Comment.where(user_id: user)
        elsif art = params[:artwork_id]
            render json: Comment.where(artwork_id: art)
        end
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: comment.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: comment
    end

    private
    
    def comment_params
        params.require(:comment).permit(:body, :artwork_id, :user_id)
    end
end