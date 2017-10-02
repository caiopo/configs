function wsync
	watch -n 0.5 -t grep -e Dirty: -e Writeback: /proc/meminfo $argv;
end
