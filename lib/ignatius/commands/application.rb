require 'ignatious/version'

if ['--version', '-v'].include?(ARGV.first)
  puts "Ignatious #{Ignatious::VERSION}"
  exit(0)
end
