ENV["SINATRA_ENV"] ||= "development"

require 'sinatra/activerecord/rake'
require_relative './config/environment'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end

desc 'Show the current environment'
task :env do
  require 'sinatra'
  puts Sinatra::Application.environment
end