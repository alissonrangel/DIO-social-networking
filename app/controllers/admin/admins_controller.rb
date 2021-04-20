class Admin::AdminsController < AdminController

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  private 

  def form_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end
end