require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :start_demo_app do
  `ruby demo_app/app.rb`
end