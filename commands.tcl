proc ssh {command} {
  global host remote_pwd
  set retval [exec ssh $host "$command"]
  puts $retval
  return $retval
}

proc in {directory body} {
  global remote_pwd
  set prev_remote_pwd $directory
  set remote_pwd $directory
  # execute the inner block:
  uplevel 1 $body
  # return to previous directory
  set remote_pwd $prev_remote_pwd
}
