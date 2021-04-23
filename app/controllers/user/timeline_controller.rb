class User::TimelineController < UserController

    def index
        ids = current_user.following.pluck(:id)
        ids << current_user.id
        @posts = Post.where(user_id: ids).order(created_at: :desc)
    end
end