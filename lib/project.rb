
class Project
    attr_reader :title

    @@all = []

    def initialize(title) 
        @title = title
    end

    def self.all
        self.all
    end

    def add_backer(backer) 
        ProjectBacker.new(self, backer)
    end

    def get_my_project_backers
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
    end

    def backers
       get_my_project_backers.map do |project_backer|
        project_backer.backer
       end
    end

end