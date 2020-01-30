
class Backer
    attr_reader :name

    def initialize(name) 
        @name = name
    end

    def back_project(project) 
        ProjectBacker.new(project, self)
    end

    def get_project_backers 
        ProjectBacker.all.select do |project_backer|
            if project_backer.backer == self
                project_backer
            end
        end
    end

    def backed_projects
        get_project_backers.map do |project_backer|
            project_backer.project
        end
    end

end