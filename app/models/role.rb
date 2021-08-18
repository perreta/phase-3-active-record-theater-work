class Role < ActiveRecord::Base
    has_many :auditions
    # has_many :locations, :through :locations
    
    def auditions
        Role.auditions
    end

    def actors
        Role.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        Role.audtions.map do |audition|
            audition.location
    end

    def lead
        if (Role.audtions.actor.first == true)
            Role.audtions.actor.first
        else "no actor has been hired for this role"
    end

    def understudy
        if (Role.audtions.actor.second == true)
            Role.audtions.actor.second
        else "no actor has been hired for understudy for this role"
    end

end

Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'

Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
