require File.join(File.dirname(__FILE__), '..', 'lib', 'ignatius.rb')
require "pathname"

SPECDIR = Pathname.new(File.dirname(__FILE__))
TMPDIR = SPECDIR.join("tmp")

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|r| require r}

RSpec.configure do |config|
  config.include(SpecHelper)

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.expect_with :rspec do |conf|
    conf.syntax = :expect
  end

  cleaner = proc do
    FileUtils.rm_rf(TMPDIR) if File.exist?(TMPDIR)
  end

  config.before(&cleaner)
  config.after(&cleaner)
  config.before { FileUtils.mkdir_p(TMPDIR) }
end
