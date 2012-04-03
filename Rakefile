
task :default => :test

desc "generate new puppet module"
task :generate, :module_name do |t, args|

  module_name = (ENV['MODULE_NAME'] || args[:module_name])
  abort "Please specify MODULE_NAME.. ie: rake generate MODULE_NAME=git" if module_name.nil?
  
  require 'erb'
  %w(manifests tests).each do |dirname|
    template = File.read(File.join(File.dirname(__FILE__), "templates", dirname,"__template.pp.erb"))
    result = ERB.new(template).result(binding)
    path = File.join(File.dirname(__FILE__), "modules", module_name, dirname)
    FileUtils.mkdir_p(path)
    File.open("#{path}/init.pp", "w") do |f|
      f.write result
    end
  end

  puppet_test(module_name)

end

desc "Install Puppet configuration (Symbolic Link ~/.puppet)"
task :install do
  path = File.join(File.dirname(__FILE__))
  configdir = File.expand_path("~/.puppet")
  system "ln -s #{path} #{configdir}"
end

desc "Sync"
task :sync do
  system "puppet apply manifests/macbook.pp"
end

def puppet_test(module_name)
  path = File.join(File.dirname(__FILE__), "modules", module_name, "tests")
  system "puppet apply --noop #{path}/init.pp"
end
