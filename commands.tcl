proc ssh {command} {
  global host
  puts $command
  exec ssh $host "$command"
}
