lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libwebpay/version'

Gem::Specification.new do |gem|
	gem.name	= 'libwebpay'
	gem.version = Libwebpay::VERSION
	gem.date = '2016-07-18'
	gem.summary = "This software was created for easy integration of ecommerce portals with Transbank Webpay solution."
	gem.description = gem.summary
	gem.authors = ["Allware Ltda."]
	gem.homepage = 'http://www.allware.cl'
	gem.email = 'soporte@transbank.com'
	gem.license = 'GNU LGPL'
	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	gem.files = Dir.chdir(File.expand_path('..', __FILE__)) do
		`git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
	end
	gem.require_paths = ["lib"]
	gem.add_dependency('savon', '~> 2')
	gem.add_dependency('signer')
	gem.add_dependency('nokogiri', '~> 1.6', '>= 1.6.7.2') # TODO: Smels to narrow
end