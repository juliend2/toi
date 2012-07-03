proc ssh {command} {
  global host
  exec ssh $host "$command"
}
