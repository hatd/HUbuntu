#!/bin/bash

initializer(){
  sudo apt-get update
  sudo apt-get install -y curl git
}

run_all(){
  initializer
}
