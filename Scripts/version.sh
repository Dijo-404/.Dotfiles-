#!/usr/bin/env bash

_404_CLONE_PATH=$(git rev-parse --show-toplevel)
_404_BRANCH=$(git rev-parse --abbrev-ref HEAD)
_404_REMOTE=$(git config --get remote.origin.url)
_404_VERSION=$(git describe --tags --always)
_404_COMMIT_HASH=$(git rev-parse HEAD)
_404_VERSION_COMMIT_MSG=$(git log -1 --pretty=%B)
_404_VERSION_LAST_CHECKED=$(date +%Y-%m-%d\ %H:%M%S\ %z)

generate_release_notes() {
  local latest_tag
  local commits

  latest_tag=$(git describe --tags --abbrev=0 2>/dev/null)

  if [[ -z "$latest_tag" ]]; then
    echo "No release tags found"
    return
  fi

  echo "=== Changes since $latest_tag ==="

  commits=$(git log --oneline --pretty=format:"• %s" "$latest_tag"..HEAD 2>/dev/null)

  if [[ -z "$commits" ]]; then
    echo "No commits since last release"
    return
  fi

  echo "$commits"
}

# _404_RELEASE_NOTES=$(generate_release_notes)

echo "404 $_404_VERSION built from branch $_404_BRANCH at commit ${_404_COMMIT_HASH:0:12} ($_404_VERSION_COMMIT_MSG)"
echo "Date: $_404_VERSION_LAST_CHECKED"
echo "Repository: $_404_CLONE_PATH"
echo "Remote: $_404_REMOTE"
echo ""

if [[ "$1" == "--cache" ]]; then
  state_dir="${XDG_STATE_HOME:-$HOME/.local/state}/404"
  mkdir -p "$state_dir"
  version_file="$state_dir/version"

  cat >"$version_file" <<EOL
_404_CLONE_PATH='$_404_CLONE_PATH'
_404_BRANCH='$_404_BRANCH'
_404_REMOTE='$_404_REMOTE'
_404_VERSION='$_404_VERSION'
_404_VERSION_LAST_CHECKED='$_404_VERSION_LAST_CHECKED'
_404_VERSION_COMMIT_MSG='$_404_VERSION_COMMIT_MSG'
_404_COMMIT_HASH='$_404_COMMIT_HASH'
EOL
# _404_RELEASE_NOTES='$_404_RELEASE_NOTES'

  echo -e "Version cache output to $version_file\n"

elif [[ "$1" == "--release-notes" ]]; then
  echo "$_404_RELEASE_NOTES"

fi
