# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'train/version'

Gem::Specification.new do |spec|
  spec.name          = 'train'
  spec.version       = Train::VERSION
  spec.authors       = ['Dominik Richter']
  spec.email         = ['drichter@chef.io']
  spec.summary       = 'Transport interface to talk to different backends.'
  spec.description   = 'Transport interface to talk to different backends.'
  spec.homepage      = 'https://github.com/inspec/train/'
  spec.license       = 'Apache-2.0'

  spec.files = %w{LICENSE} + Dir.glob('lib/**/*', File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'json_pure', '>= 1.8', '< 3.0'
  # chef-client < 12.4.1 require mixlib-shellout-2.0.1
  spec.add_dependency 'mixlib-shellout', '~> 2.0'
  spec.add_dependency 'net-ssh', '>= 2.9', '< 6.0'
  spec.add_dependency 'net-scp', '~> 1.2'
  spec.add_dependency 'winrm', '~> 2.0'
  spec.add_dependency 'winrm-fs', '~> 1.0'
  spec.add_dependency 'docker-api', '~> 1.26'
  spec.add_dependency 'aws-sdk', '~> 2'
  spec.add_dependency 'azure_mgmt_resources', '~> 0.15'
  spec.add_dependency 'azure_graph_rbac', '~> 0.16'
  spec.add_dependency 'azure_mgmt_key_vault', '~> 0.17'
  spec.add_dependency 'google-api-client', '~> 0.23.9'
  spec.add_dependency 'googleauth', '~> 0.6.6'
  spec.add_dependency 'inifile'

  spec.add_development_dependency 'mocha', '~> 1.1'
end
