class User::CommentsController < UserController

  def create
    f_params = form_params.merge(user: current_user)
    @comment = Comment.new(f_params)
    @post = @comment.post

    if @comment.save
      # respond_to do |f|
      #   f.js { render "create" }
      # end
      redirect_to root_path
    end
  end


  private

  def form_params
    params.require(:comment).permit(:body, :post_id)
  end

end