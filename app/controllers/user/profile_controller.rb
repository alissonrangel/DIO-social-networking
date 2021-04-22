class User::ProfileController < UserController
  def show
    @post = Post.new
  end

  def potencial_to_follow
    @potencial_to_follow = User.where.not(id: current_user.following.pluck(:id)).where.not(id: current_user.id)
  end
end