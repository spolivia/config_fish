#!/usr/bin/env fish

# silent intro
set --universal fish_greeting ""

[ -d /usr/local/bin ];  and set --local paths $paths /usr/local/bin
[ -d /usr/local/sbin ]; and set --local paths $paths /usr/local/sbin

[ -d ~/devel/spoticli.git ]; and set --local paths $paths ~/devel/spoticli.git

set --universal fish_user_paths $paths
