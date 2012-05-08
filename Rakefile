#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--color'
  t.pattern = 'spec/*_spec.rb'
end

desc 'Run Tests'
task :default => :spec
