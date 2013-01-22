## Rake tasks for cookbook[smartmachine_functions]

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |opts|
   opts.rspec_opts = "--format doc --color"
#   opts.fail_on_error = false
end

task :default => :spec


desc "run foodcritic"
task :fc do
  sh "foodcritic ./"
end

  
