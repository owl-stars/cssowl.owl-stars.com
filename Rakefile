desc "Initialize the workspace"
task :init do
  puts "\n## Installing gems"
  system "bundle install"
  puts "\n## Installing bower packages"
  system "bower install"
end

desc "Build and start server"
task :server do
  system "bundle exec middleman server"
end

desc "Generate build from sources"
task :build do
  system "bundle exec middleman build"
end

desc "Generate build and deploy to server"
task :deploy do
  system "bundle exec middleman deploy"
end

desc "Build and start server"
task :default => [:server]
