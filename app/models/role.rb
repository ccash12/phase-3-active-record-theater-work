class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
            # binding.pry
        end
    end

    def locations 
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead 
        auditions.find_by(hired: true) || 'no actor has been hired for this role'
    end

    def under_study
        actors = self.auditions.find_all { |audition| 
        audition.hired == true }
        # binding.pry
        if actors && actors.length > 1
            actors.second
        else
            return 'no actor has been hired for understudy for this role'
        end
    end

end