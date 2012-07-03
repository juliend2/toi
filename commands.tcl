
proc ssh {command} {
  global host remote_pwd
  set retval [exec ssh $host "cd $remote_pwd && $command"]
  puts "\[remote\] $command: $retval"
}

# remote cd to directory, and execute body in that directory
proc in {directory body} {
  global remote_pwd
  set prev_remote_pwd $remote_pwd
  set remote_pwd $directory
  # execute the inner block:
  uplevel 1 $body
  # return to previous directory
  set remote_pwd $prev_remote_pwd
}

# execute local commands
proc local {command} {
  set retval [exec sh -c "$command"]
  puts "\[local\] $command: $retval"
}

proc rsync {src target {options "-azP --exclude=.git*"}} {
  set command "rsync $options $src $target"
  set retval [exec sh -c $command]
  puts "\[local\] $command: $retval"
}
