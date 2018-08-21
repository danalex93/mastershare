module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_mentor
      flash.clear
      #redirect_to(rails_admin.dashboard_path) && return
    elsif current_student
      flash.clear
      #redirect_to(authenticated_user_root_path) && return
    elsif current_moderator
      flash.clear
    end
  end
end