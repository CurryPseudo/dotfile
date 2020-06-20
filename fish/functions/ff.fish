function ff
	set -l FILE (fd -uu -t f . "$HOME" | fzf)
	test -n "$FILE" && $argv[1..-1] "$FILE"
end
