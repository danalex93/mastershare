class ApplicationController < ActionController::Base
  before_action :current_institution

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "No tienes permiso para acceder a esta sección."
  end

  private
    def current_ability
      @current_ability = Ability.new(current_moderator, current_mentor, current_student)
    end

    def current_institution
      @current_institution = current_moderator.institution if moderator_signed_in?
      @current_institution ||= current_mentor.institution if mentor_signed_in?
      @current_institution ||= current_student.institution if student_signed_in?
    end
end
