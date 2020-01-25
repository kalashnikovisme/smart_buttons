lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "smart_buttons/version"

Gem::Specification.new do |spec|
  spec.name          = "smart_buttons"
  spec.version       = SmartButtons::VERSION
  spec.authors       = ["Pavel Kalashnikov"]
  spec.email         = ["kalashnikovisme@gmail.com"]

  spec.summary       = %q{Replacement of Rails `link_to` method with static HTML}
  spec.description   = %q{Replacement of Rails `link_to` method with static HTML}
  spec.homepage      = 'https://github.com/kalashnikovisme/smart_buttons'
  spec.license       = 'MIT'
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'actionview'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'simple_form'
end
