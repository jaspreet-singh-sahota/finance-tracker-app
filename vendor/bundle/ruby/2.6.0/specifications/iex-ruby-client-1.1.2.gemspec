# -*- encoding: utf-8 -*-
# stub: iex-ruby-client 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "iex-ruby-client".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2020-03-25"
  s.email = "dblock@dblock.org".freeze
  s.homepage = "http://github.com/dblock/iex-ruby-client".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "IEX Finance API Ruby client with support for retrieving stock quotes.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<money_helper>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.72.0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    else
      s.add_dependency(%q<faraday>.freeze, [">= 0.9"])
      s.add_dependency(%q<faraday_middleware>.freeze, [">= 0"])
      s.add_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_dependency(%q<money_helper>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.72.0"])
      s.add_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, [">= 0.9"])
    s.add_dependency(%q<faraday_middleware>.freeze, [">= 0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<money_helper>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.72.0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
