require_relative 'lib/redmine/activity/fetcher_patch'
require_relative 'lib/redmine/acts/activity_provider_patch'
require_relative 'lib/westaco_activity_tab/patches/activities_controller_patch'

Redmine::Plugin.register :westaco_activity_tab do
  name 'Westaco Activity Tab plugin'
  author 'Yanto Daryanto'
  description 'This is a plugin for adding enhanced filters to the activity tab in Redmine'
  version '0.0.1'
  url 'https://github.com/westaco/westaco_activity_tab'
  author_url 'https://github.com/yan13to'
end
