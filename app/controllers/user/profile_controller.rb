class User::ProfileController < UserController
  def show
    @post = Post.new
  end

  def potencial_to_follow
    @potencial_to_follow = User.potencial_to_follow(current_user)
  end
end