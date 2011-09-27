# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple-rss}
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lucas Carlson"]
  s.date = %q{2010-07-06}
  s.description = %q{A simple, flexible, extensible, and liberal RSS and Atom reader for Ruby. It is designed to be backwards compatible with the standard RSS parser, but will never do RSS generation.}
  s.email = %q{lucas@rufy.com}
  s.files = ["install.rb", "lib/simple-rss.rb", "LICENSE", "Rakefile", "README", "simple-rss.gemspec", "test/base/base_test.rb", "test/data/atom.xml", "test/data/not-rss.xml", "test/data/rss09.rdf", "test/data/rss20.xml", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/cardmagic/simple-rss}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple, flexible, extensible, and liberal RSS and Atom reader for Ruby. It is designed to be backwards compatible with the standard RSS parser, but will never do RSS generation.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
