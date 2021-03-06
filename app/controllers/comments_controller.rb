class CommentsController < ApplicationController
	http_basic_authenticate_with name: "webmaster", password: "secret", only: :destroy

	def create
		# comments is nested resource so it must keep track of
		# its associated article at all steps
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body, :status)
		end
end
