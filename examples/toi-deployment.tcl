set host "user@webhost.com"

proc local_push {} {
  local "git push"
}

proc remote_pull {} {
  in "/home/user/public_html" {
    ssh "git checkout .htaccess"
    ssh "git pull"
    ssh "mv .htaccess_prod .htaccess"
  }
}

proc deploy {} {
  local_push
  remote_pull
}

