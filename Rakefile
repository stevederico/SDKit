desc 'Generate all documentation'
task :doc => [:'doc:clean', :'doc:generate']

task :default => :doc

namespace :doc do
  desc 'clean'
  task :clean do 
    
  end
  
  desc 'Generate Documentation'
  task :generate do
    `appledoc --project-name SDKit --project-company "Bixby Apps" --company-id com.bixbyapps --verbose 6 --no-create-docset --create-html --output ./Documentation .`
    puts 'steve'
  end
  
end