# Defined in - @ line 2
function cat --description 'alias cat=lolcat'
	if test -f $argv
		lolcat $argv
	else
		ls $argv
	end
end
