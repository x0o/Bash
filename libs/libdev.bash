#!/usr/bin/env bash

function DEBUG() {
  [ "$_DEBUG" == "on" ] && $@ || :
}