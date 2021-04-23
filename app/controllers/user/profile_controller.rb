class User::ProfileController < UserController
  def show
    @post = Post.new
    @comment = Comment.new
  end

  def potencial_to_follow
    @potencial_to_follow = User.potencial_to_follow(current_user)
  end

  def following
    @following = current_user.following
  end

  def followers
    @followers = current_user.followers
  end
end