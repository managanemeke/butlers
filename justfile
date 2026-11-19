set shell := ["nu", "-c"]

default: list

list:
  @just --list

hi:
  #!/usr/bin/env nu
  ls source/*/*/ | get name | each {|directory|
    cd $directory
    just hi
  }

