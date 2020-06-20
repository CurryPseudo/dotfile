function f
	set -l DIR (fd -uu -t=d . "$HOME" | fzf)
	test -n "$DIR" && $argv[1] $DIR $argv[2..-1]
end
