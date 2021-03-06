proc validate {} {
  global task toifile
   
  # Is there a toi.tcl file in the current directory?
  if { [file exists $toifile] == 0 } {
    puts "No toi.tcl file found. Please create one."
    exit
  }
  # Is the toi.tcl file is executable?
  if { [file executable $toifile] == 0 } {
    puts "The toi.tcl file is not executable."
    exit
  }

  # Did we pass a task argument?
  if {$task == ""} {
    puts "Please tell me what task you want me to do."
    exit
  }
}

# Does the called task exist?
proc task_exists? {task} {
  global toifile
  if { [info procs $task] == "" } {
    puts "There is no task named '$task' in $toifile."
    exit
  }
}

