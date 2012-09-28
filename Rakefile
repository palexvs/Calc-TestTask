require 'rubygems'
require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.rcov = false
  t.pattern = "*_spec.rb"
end

desc "Create rspec coverage"
task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task["spec"].execute
end
