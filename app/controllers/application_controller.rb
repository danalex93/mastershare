class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "No tienes permiso para acceder a esta sección."
  end

  private
    def current_ability
      @current_ability = Ability.new(current_mentor, current_student)
    end
end
