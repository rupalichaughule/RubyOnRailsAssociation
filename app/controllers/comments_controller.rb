class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        p "comment_params"
        p comment_params
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
      end
      private
      def comment_params
        params.fetch(:comment,{}).permit(:commenter, :body)
      end
end
