# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fullcalendar-resourceviews-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["raymccoy"]
  gem.email         = ["tomas@cactilio.com"]
  gem.description   = %q{This fork of FullCalendar, a fantastic jquery plugin that gives you an event calendar with tons of great ajax wizardry, incluing drag and drop of events and resource views.}
  gem.summary       = %q{A simple asset pipeline bundling of the fullcalendar jquery plugin.}
  gem.homepage      = "https://github.com/raymccoy/fullcalendar-resourceviews-rails"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "fullcalendar-resourceviews-rails"
  gem.require_paths = ["lib"]
  gem.version       = FullcalendarResourceViews::Rails::VERSION
  
  gem.add_development_dependency "rake"
end
