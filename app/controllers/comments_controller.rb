class CommentsController < ApplicationController


  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @quote = Quote.find(params[:quote_id])
    @comment = @quote.comments.build(comment_params)
    if @comment.save
      flash[:success] = "Your comment has been added"
      redirect_to quotes_path
    else
      flash.now[:danger] = "Your comment has not been added"
      redirect_to quotes_path
    end

    def show
      
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:user, :body)
    end

end
