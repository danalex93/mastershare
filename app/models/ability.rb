class Ability
  include CanCan::Ability

  def initialize(moderator, mentor, student)
    can :read, Workshop
    if moderator
      can :manage, :all
    elsif mentor
      can :manage, Workshop, mentor_id: mentor.id
      can :my, Workshop
      can :manage, Topic do |topic|
        topic.mentor.id == mentor.id
      end
      can :manage, Comment do |comment|
        comment.mentor.id == mentor.id
      end
      can :manage, Material do |material|
        material.mentor.id == mentor.id
      end
    elsif student
      can :my, Workshop
      can :manage, Topic do |topic|
        student.enrollments.confirmed.map(&:workshop_id).include?(topic.workshop_id)
      end
      can :read, Comment do |comment|
        student.enrollments.confirmed.map(&:workshop_id).include?(comment.workshop_id)
      end
      can :manage, Comment, student_id: student.id
      can :read, Material do |material|
        student.enrollments.confirmed.map(&:workshop_id).include?(material.workshop_id)
      end
      can :manage, Enrollment, student_id: student.id
    else
        # Intentionally left blank
    end
  end
end
