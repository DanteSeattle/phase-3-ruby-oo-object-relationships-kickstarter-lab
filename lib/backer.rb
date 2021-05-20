
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        temparr = ProjectBacker.all.filter{|projects| projects.backer == self}.map{|projects| projects.project}
    end
end