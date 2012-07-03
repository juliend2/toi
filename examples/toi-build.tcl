# we don't use a remote host here, so set it to "" :
set host ""

proc compile {} {
  local "ocamlc -custom -o main main.ml"
}

proc clean {} {
  local "rm -f *.cm\[iox\]"
}

proc all {} {
  clean
  compile
}

