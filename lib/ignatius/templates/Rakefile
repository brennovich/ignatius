task :default => [:preview]

task :preview do
  puts 'server runing'
  jekyllPid = Process.spawn({ "DEVELOPMENT_ENV" => "preview" }, 'jekyll --auto')
  comapssPid = Process.spawn('compass watch')
  guardPid = Process.spawn('guard')
  rackupPid = Process.spawn("rackup --port 4000")

  trap("INT") do
    [jekyllPid, comapssPid, guardPid, rackupPid].each { |pid| Process.kill(9, pid) rescue Errno::ESRCH }
    exit 0
  end

  [jekyllPid, comapssPid, guardPid, rackupPid].each { |pid| Process.wait(pid) }
end

