# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoa}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott J. Tamosunas"]
  s.date = %q{2011-02-17}
  s.description = %q{Adds the association and validation macros for Rspec in the same way Shoulda does for ActiveRecord.}
  s.email = %q{tamosunas@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/mongoa.rb",
    "lib/mongoa/integrations/rspec2.rb",
    "lib/mongoa/mongo_mapper/associations/all.rb",
    "lib/mongoa/mongo_mapper/matchers.rb",
    "lib/mongoa/mongo_mapper/validations/validate_base.rb",
    "lib/mongoa/mongo_mapper/validations/validate_format_of.rb",
    "lib/mongoa/mongo_mapper/validations/validate_inclusion_of.rb",
    "lib/mongoa/mongo_mapper/validations/validate_length_of.rb",
    "lib/mongoa/mongo_mapper/validations/validate_numericality_of.rb",
    "lib/mongoa/mongo_mapper/validations/validate_presence_of.rb",
    "lib/mongoa/mongo_mapper/validations/validate_uniqueness_of.rb",
    "mongoa.gemspec",
    "spec/assoications/all_spec.rb",
    "spec/matchers_spec.rb",
    "spec/spec_helper.rb",
    "spec/validations/validate_exclusion_of_spec.rb",
    "spec/validations/validate_format_of_spec.rb",
    "spec/validations/validate_inclusion_of_spec.rb",
    "spec/validations/validate_length_of_spec.rb",
    "spec/validations/validate_numercality_of_spec.rb",
    "spec/validations/validate_presence_of_spec.rb",
    "spec/validations/validate_uniqueness_of_spec.rb"
  ]
  s.homepage = %q{http://github.com/scotttam/mongoa}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Like Shoulda but for MongoMapper.}
  s.test_files = [
    "spec/assoications/all_spec.rb",
    "spec/matchers_spec.rb",
    "spec/spec_helper.rb",
    "spec/validations/validate_exclusion_of_spec.rb",
    "spec/validations/validate_format_of_spec.rb",
    "spec/validations/validate_inclusion_of_spec.rb",
    "spec/validations/validate_length_of_spec.rb",
    "spec/validations/validate_numercality_of_spec.rb",
    "spec/validations/validate_presence_of_spec.rb",
    "spec/validations/validate_uniqueness_of_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

