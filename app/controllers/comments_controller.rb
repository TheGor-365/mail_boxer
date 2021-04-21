class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:user_id, :disscussion_id, :body)
    end

end
