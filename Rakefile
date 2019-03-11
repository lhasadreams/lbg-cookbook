#!/usr/bin/env rake

# Import other external rake tasks
Dir.glob('tasks/*.rake').each { |r| import r }

# Style tests. cookstyle (rubocop) and Foodcritic
namespace :style do

  begin
    require 'foodcritic'

    desc 'Run Chef style checks'
    FoodCritic::Rake::LintTask.new(:foodcritic) do |t|
      t.options = {
        fail_tags: ['any'],
        progress: true,
      }
    end
  rescue LoadError
    puts ">>> Gem load error: #{e}, omitting style:chef" unless ENV['CI']
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:foodcritic']
task lint: ['style']

# ChefSpec
begin
  require 'rspec/core/rake_task'

  desc 'Run ChefSpec examples'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError => e
  puts ">>> Gem load error: #{e}, omitting spec" unless ENV['CI']
end

# Default
task default: %w(style spec)