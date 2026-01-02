#!/usr/bin/env bash

404_CLONE_PATH=$(git rev-parse --show-toplevel)
404_BRANCH=$(git rev-parse --abbrev-ref HEAD)
404_REMOTE=$(git config --get remote.origin.url)
404_VERSION=$(git describe --tags --always)
404_COMMIT_HASH=$(git rev-parse HEAD)
404_VERSION_COMMIT_MSG=$(git log -1 --pretty=%B)
404_VERSION_LAST_CHECKED=$(date +%Y-%m-%d\ %H:%M%S\ %z)

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

# 404_RELEASE_NOTES=$(generate_release_notes)

echo "404 $404_VERSION built from branch $404_BRANCH at commit ${404_COMMIT_HASH:0:12} ($404_VERSION_COMMIT_MSG)"
echo "Date: $404_VERSION_LAST_CHECKED"
echo "Repository: $404_CLONE_PATH"
echo "Remote: $404_REMOTE"
echo ""

if [[ "$1" == "--cache" ]]; then
  state_dir="${XDG_STATE_HOME:-$HOME/.local/state}/404"
  mkdir -p "$state_dir"
  version_file="$state_dir/version"

  cat >"$version_file" <<EOL
404_CLONE_PATH='$404_CLONE_PATH'
404_BRANCH='$404_BRANCH'
404_REMOTE='$404_REMOTE'
404_VERSION='$404_VERSION'
404_VERSION_LAST_CHECKED='$404_VERSION_LAST_CHECKED'
404_VERSION_COMMIT_MSG='$404_VERSION_COMMIT_MSG'
404_COMMIT_HASH='$404_COMMIT_HASH'
EOL
# 404_RELEASE_NOTES='$404_RELEASE_NOTES'

  echo -e "Version cache output to $version_file\n"

elif [[ "$1" == "--release-notes" ]]; then
  echo "$404_RELEASE_NOTES"

fi
