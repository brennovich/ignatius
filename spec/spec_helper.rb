require File.join(File.dirname(__FILE__), '..', 'lib', 'ignatius.rb')

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |r| require r }
Dir[File.dirname(__FILE__) + "/shared/*.rb"].each { |r| require r }

RSpec.configure do |config|
  config.include(SpecHelper)

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run_excluding :shared => true
  config.filter_run :focus
  config.expect_with :rspec do |conf|
    conf.syntax = :expect
  end

  cleaner = proc do
    FileUtils.rm_rf(tmpdir) if File.exist?(tmpdir)
  end

  config.before(&cleaner)
  config.after(&cleaner)
  config.before { FileUtils.mkdir_p(tmpdir) }
end
