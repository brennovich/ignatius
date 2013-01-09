require File.join(File.dirname(__FILE__), '..', 'lib', 'ignatius.rb')
Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|r| require r}

require "pathname"

SPECDIR = Pathname.new(File.dirname(__FILE__))
TMPDIR = SPECDIR.join("tmp")

RSpec.configure do |config|
  config.include(SpecHelper)

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.expect_with :rspec do |conf|
    conf.syntax = :expect
  end

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
