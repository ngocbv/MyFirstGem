require "rake/testtask"
require "rake/extensiontask"

Rake::TestTask.new do |t|
  t.libs << 'test'
end

Rake::ExtensionTask.new "my_malloc" do |ext|
  ext.lib_dir = "lib/my_malloc"
end

desc "Run tests"
task :default => :test
