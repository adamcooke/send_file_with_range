Gem::Specification.new do |s|
  s.name          = "send_file_with_range"
  s.description   = %q{A Rails addition which will allow sending of files with appropriate range headers}
  s.summary       = s.description
  s.homepage      = "https://github.com/adamcooke/send_file_with_rangeit"
  s.version       = "1.0.0"
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
  s.licenses      = ['MIT']
end
