# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rlabel}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gustavo Lichti"]
  s.date = %q{2009-11-04}
  s.email = %q{gustavo@lichti.eti.br}
  s.files = ["lib/RLabel.rb", "lib/rlabel/teste.rb", "lib/rlabel/rlabel.rb", "lib/rlabel/ruby_label_versio.rb"]
  s.homepage = %q{http://www.lichti.eti.br}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rlabel}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Criar Etiquetas em PDF}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
