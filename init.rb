Redmine::Plugin.register :progressive_projects_list do
  name 'Progressive Projects List plugin'
  author 'Dmitry Babenko'
  description 'Projects List with menus and progress bars.'
  version '0.0.2'
  url 'https://github.com/stgeneral/redmine-progressive-projects-list'
  author_url 'https://github.com/stgeneral'

  settings :default => {
    'show_project_description' => false,
    'show_project_progress'    => true,
    'show_project_menu'        => false
  }, :partial => 'settings/progressive_projects_list'
end

require 'progressive_projects_list_listener'
require 'progressive_projects_list'
ProjectsHelper.send(:include, ProgressiveProjectsList)
