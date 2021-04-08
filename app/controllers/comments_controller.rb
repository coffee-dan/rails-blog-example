class CommentsController < ApplicationController
	def create
		# comments is nested resource so it must keep track of
		# its associated article at all steps
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body, :status)
		end
end
