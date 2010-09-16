task :default => :spec
task :cruise => :default

task :spec do
    system("script/spec #{Dir.glob("spec/**/*_spec.rb")}")
end
