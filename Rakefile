require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "twitter2campfire"
    gem.summary = %Q{gemification of twitter2campfire script}
    gem.description = %Q{found this code here: [http://github.com/paulca/twitter2campfire]. I just gemified it.}
    gem.email = "james@giraffesoft.ca"
    gem.homepage = "http://github.com/giraffesoft/twitter2campfire"
    gem.authors = ["James Golick"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency "rio"
    gem.add_dependency "tinder"
    gem.add_dependency "hpricot"
    gem.add_dependency "htmlentities"
    gem.add_dependency "thor"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec    => :check_dependencies
task :default => :spec

