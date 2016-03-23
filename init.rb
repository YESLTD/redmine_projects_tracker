Redmine::Plugin.register :projects_tracker do
  name 'Projects Tracker plugin'
  author 'Praveen K'
  description 'This is a plugin for Redmine to list all the projects and status of all trackers in an project.'
  version '0.0.1'
  url 'https://www.redmine.org/plugins/projects_tracker '
  menu :top_menu, :project_trackers, {:controller => 'project_trackers', :action => 'index'},
       :caption => "Projects Tracker"
end
