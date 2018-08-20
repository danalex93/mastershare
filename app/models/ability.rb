class Ability
  include CanCan::Ability

  def initialize(mentor, student)
    can :read, Workshop
    if mentor
        can :manage, Workshop, mentor_id: mentor.id
        can :manage, Topic, workshop: { mentor_id: mentor.id }
        can :manage, Comment, topic: { workshop: { mentor_id: mentor.id } }
        can :manage, Material, workshop: { mentor_id: mentor.id }
    elsif student
        can :manage, Topic, workshop_id: student.enrollments.map(:workshop_id)
        can :manage, Comment, topic: { workshop_id: student.enrollments.map(:workshop_id) }
        can :read, Material, workshop_id: student.enrollments.map(:workshop_id)
    else
        # Intentionally left blank
    end
  end
end
