#!/bin/bash

excluded_dirs=':packages:scripts:'
dirname_mapping='
  s/_/-/g;
  s/[+]/-plus/
'
packages_dir='packages'
upstream_account='rime-aca'

rewrite_git_history() {
  local dir="$1"
  git filter-branch --prune-empty --subdirectory-filter ${dir} -- master
  git update-ref -d refs/original/refs/heads/master
  # clean up
  git reset --hard
  git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d
  git reflog expire --expire=now --all
  git gc --aggressive --prune=now
}

push_package() {
  local package="$1"
  # sync master branch
  git fetch . master:master
  # push to GitHub
  git remote rename origin local
  git remote add origin https://github.com/${upstream_account}/rime-${package}.git
  git push -u origin master
}

main() {
  cd "$(dirname "$0")/.."
  mkdir -p "${packages_dir}"
  local dir
  for dir in *; do
    if [[ -d "${dir}" ]] && ! [[ "${excluded_dirs}" =~ ":${dir}:" ]]; then
      local package=$(echo "$dir" | sed "${dirname_mapping}" | tr '[:upper:]' '[:lower:]')
      echo "package '${package}'"
      local target_dir="${packages_dir}/rime-${package}"
      git clone . "${target_dir}"
      pushd "${target_dir}"
      rewrite_git_history "${dir}"
      push_package "${package}"
      popd
    fi
  done
}

main
