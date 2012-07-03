proc set_remote_pwd {} {
  global host remote_pwd
  if { $host != "" } {
    set remote_pwd [exec ssh $host "'pwd'"]
  }
  return $remote_pwd
}
