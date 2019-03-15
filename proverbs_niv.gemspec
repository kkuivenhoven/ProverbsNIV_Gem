Gem::Specification.new do |s|
  s.name        = 'proverbs_niv'
  s.version     = '3.0.0'
  s.date        = '2019-03-13'
  s.summary     = "A wrapper for the bookofproverbs.herokuapp.com API endpoint. Contains functionality for obtaining the entire books of proverbs and individual chapters. Additional features include a word count for each occurence of a word -- available per chapter. This feature further extends by removing a list of stop words (i.e. a, or, and, etc.) from the word saved word list."
  s.description = "Access to Proverbs NIV ('95) translation."
  s.authors     = ["Kendra Kuivenhoven"]
  s.email       = 'kkuivenhoven@mail.csuchico.edu'
  s.files       = ["lib/proverbs_niv.rb"]
  s.homepage    = 'http://rubygems.org/gems/proverbs_niv'
  s.license     = 'MIT'
	s.metadata    = { "source_code_uri" => "https://github.com/kkuivenhoven/ProverbsNIV_Gem" }
end
