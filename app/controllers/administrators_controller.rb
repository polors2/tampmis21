class AdministratorsController < ActionController::Base
  def admin
    @Administrator = Administrator.all
  end
end
