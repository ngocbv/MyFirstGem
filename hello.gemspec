Gem::Specification.new "my_malloc", "1.0" do |s|
  s.name        = 'hello-neversmile'
  s.version     = '0.0.1'
  s.executables << 'hello'
  s.date        = '2017-04-27'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Bach Van Ngoc"]
  s.email       = 'nevesmile12b1@gmail.com'
  s.files       = ["lib/hello.rb", "lib/hello/translator.rb"]
  s.homepage    =
    'http://rubygems.org/gems/hello-neversmile'
  s.license       = 'UET'
  s.extensions = %w[ext/my_malloc/extconf.rb]
  s.cert_chain  = ['certs/public_cert.pem']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
end
