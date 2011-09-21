require "rubygems"
require "bundler/setup"

require "rake"
require "rspec/core/rake_task"

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb"
end