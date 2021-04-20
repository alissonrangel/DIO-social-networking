class Admin::AdminsController < AdminController

  def index
    @admins = Admin.all
  end

end