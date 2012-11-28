require 'ignatius/version'

if ['--version', '-v'].include?(ARGV.first)
  puts "Ignatius #{Ignatius::VERSION}"
  exit(0)
end

if ARGV[0] == 'new'
  puts 'New app'
end
