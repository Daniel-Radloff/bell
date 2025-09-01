#!/bin/zsh

bell() {
    "$@"
    paplay ~/Music/blyat_9T1fo5H.mp3
}

_bell_complete() {
  # vibe coded, don't ask me how it works, don't touch it
  shift words
  (( CURRENT-- ))
  _normal
}

compdef _bell_complete bell
