ARGV << '--help' if ARGV.empty?

help_message = <<-EOT
  Usage: ignatius new myblog
EOT

command = ARGV.shift

case command
when 'new'
  ARGV[0]  = 'new'
  require 'ignatius/commands/application'

when '--version', '-v'
  ARGV[0]  = '--version'
  require 'ignatius/commands/application'

when '-h', '--help'
  puts help_message

else
  puts "Error: Command '#{command}' not recognized"
end

