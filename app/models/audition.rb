class Audition < ActiveRecord::Base
    belongs_to :role
  
    def role
        Audition.role
    end

    def call_back
        Audition.hired=true
    end

end