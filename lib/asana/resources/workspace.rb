module Asana
  class Workspace < Asana::Resource
    alias :create :method_not_allowed
    alias :destroy :method_not_allowed

    def projects
      Project.all_by_workspace(:params => { :workspace_id => self.id })
    end

    def tasks
      Task.all_by_workspace(:params => { :workspace_id => self.id })
    end

    def users
      User.all_by_workspace(:params => { :workspace_id => self.id })
    end
  end
end