# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rSquery}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ivo Dancet"]
  s.date = %q{2009-05-15}
  s.email = %q{ivo.dancet@by2.be}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/rSquery.rb",
    "lib/rSquery/jquery.rb",
    "lib/rSquery/rspec_matchers.rb",
    "lib/rSquery/selenium_hacks.rb",
    "spec/rSquery_spec.rb",
    "spec/spec_helper.rb",
    "test/index.html",
    "test/javascripts/jquery-1.3.2.min.js",
    "test/javascripts/test.js"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/caifara/rSquery}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.requirements = ["rspec", "selenium/client"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/rSquery_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
