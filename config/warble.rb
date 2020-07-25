# Warbler web application assembly configuration file
Warbler::Config.new do |config|
  config.features = %w(compiled executable)
  config.dirs = %W(app config lib vendor db)
  config.includes = %w(Rakefile config.ru config/jetty-web.xml)
  config.excludes = FileList['lib/tasks', 'lib/spec', 'config/web.xml.erb', 'db/seeds.rb']
  config.bundler = true
  config.bundle_without = %w(development test ci deployment assets)
  config.gem_dependencies = true
  config.gem_excludes = [/^(test|spec)\//]
  config.jar_name = 'react-on-rails'
  config.webxml.rails.env = ENV['RAILS_ENV'] || 'test'

  config.webserver = 'jetty'

  config.webxml.jruby.min.runtimes = 1
  config.webxml.jruby.max.runtimes = 1
end
