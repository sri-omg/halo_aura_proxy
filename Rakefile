task :default => :spec
task :cruise => :default

def system_or_exit(cmd, stdout = nil)
  puts "Executing #{cmd}"
  cmd += " >#{stdout}" if stdout
  system(cmd) or raise "******** Build failed ********"
end

task :spec do
    system_or_exit("script/spec #{Dir.glob("spec/**/*_spec.rb").join(' ')}")
end
