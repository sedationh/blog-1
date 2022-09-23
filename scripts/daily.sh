#!/bin/bash
set -e
my_dir="$(dirname "$0")"
source "$my_dir/common.sh"
template_path="$my_dir/templates/daily.md.tmpl"
target_path="$my_dir/../content/blog/journals/$(date +%Y-%m-%d).md"

template $template_path $target_path;
$TMUX_EDITOR $target_path;
