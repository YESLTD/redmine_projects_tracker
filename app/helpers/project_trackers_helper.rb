module ProjectTrackersHelper
  def version_filtered_issues_path(version, options = {})
    options = {:fixed_version_id => version, :set_filter => 1}.merge(options)
    project = case version.sharing
                when 'hierarchy', 'tree'
                  if version.project && version.project.root.visible?
                    version.project.root
                  else
                    version.project
                  end
                when 'system'
                  nil
                else
                  version.project
              end

    if project
      project_issues_path(project, options)
    else
      issues_path(options)
    end
  end
end
