#!/bin/bash
# useful script for 'git branch'

while getopts ":ndh:" opt
do
  case $opt in
    n) new_mode=1;;
    d) delete_mode=1;;
    \?) usage_exit;;
  esac
done

shift $(($OPTIND - 1))

branches=$(git branch --format='%(refname:short)')

function usage_exit() {
  cat << EOF
Usage:
  $0 [-d][-n]
Options:
  -d delete mote
  -n checkouts new branch
EOF
  exit 1
}

function do_checkout() {
  git checkout $1
  exit 0
}

function checkout_new_branch() {
  git checkout -b $1
  exit 0
}

function delete_branch() {
  echo "branch_name: $1"
  read -p "Are you sure to delete? [y/n] > " confirm
  if [[ $confirm != "y" ]]; then
    echo "aborted."
    exit 1
  fi
  git branch -D $1
  exit 0
}

function print_branches() {
  i=1
  for b in ${branches[@]}; do
    echo $i: $b
    let i++
  done
}

function select_branch() {
  read -p "select index > " index
  i=1
  for b in ${branches[@]}; do
    if [[ $i = $index ]]; then echo $b; fi
    let i++
  done
}

if [[ $new_mode = "1" ]]; then
  echo "create new branch"
  read -p "input new branch name > " name
  checkout_new_branch $name
fi

print_branches
name=$(select_branch)

if [[ $delete_mode = "1" ]]; then
  echo "delete branch"
  delete_branch $name
fi

do_checkout $name
