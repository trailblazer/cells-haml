source 'https://rubygems.org'

# Specify your gem's dependencies in cells-haml.gemspec
gemspec

gem 'railties'
gem 'actionpack'
gem 'actionview'
gem "haml"
gem "activemodel"
gem "tilt"

case ENV["GEMS_SOURCE"]
when "local"
  gem "cells", path: "../cells"
  # gem "erbse", path: "../erbse"
when "github"
  gem "cells", github: "trailblazer/cells"
end
