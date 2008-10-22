Gem::Specification.new do |s|
  s.name = %q{.}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve Tooke"]
  s.date = %q{2008-10-22}
  s.description = %q{Merb plugin that provides ssl_requirement from rails.}
  s.email = %q{Your Email}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb-ssl-requirement", "lib/merb-ssl-requirement/ssl_requirement.rb", "lib/merb-ssl-requirement.rb", "spec/controllers", "spec/controllers/ssl-requirement.rb", "spec/spec_helper.rb", "spec/ssl_requirement_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://merbivore.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Merb plugin that provides ssl_requirement from rails.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<merb>, [">= 0.9.9"])
    else
      s.add_dependency(%q<merb>, [">= 0.9.9"])
    end
  else
    s.add_dependency(%q<merb>, [">= 0.9.9"])
  end
end
