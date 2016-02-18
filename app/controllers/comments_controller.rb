class CommentsController < InheritedResources::Base
  def create
	@comment = Comment.new(comment_params)
	
	@comment.save
	
    redirect_to :post	
	
	respond_to do |format|
		format.js
	end
  end
  
  private

    def comment_params
      params.require(:comment).permit(:name, :email, :body, :post_id)
    end
end

