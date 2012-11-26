require 'ignatius/version'

if ['--version', '-v'].include?(ARGV.first)
  puts "Ignatius #{Ignatius::VERSION}"
  exit(0)
end

if ARGV.first != 'new'
  ARGV[0] = '--help'
else
  puts 'New app'
end
