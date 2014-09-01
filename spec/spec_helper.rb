$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
Dir['../lib/**/*.rb'].each { |f| require f }

require 'rspec/core'
require 'rspec/its'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
