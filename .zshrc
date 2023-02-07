source ~/.bashrc

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="sammy"
#ZSH_THEME="blinks"
#ZSH_THEME="kardan"
#ZSH_THEME="arrow"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="ys"
#ZSH_THEME="frisk"
#ZSH_THEME="gentoo"
#ZSH_THEME="minimal"
#ZSH_THEME="terminalparty"
#ZSH_THEME="mgutz"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="eastwood"
#ZSH_THEME="macovsky-ruby"
#ZSH_THEME="nanotech"
#ZSH_THEME="nanotech"
#ZSH_THEME="mortalscumbag"
#ZSH_THEME="trapd00r"
#ZSH_THEME="sunaku"
#ZSH_THEME="random"
#echo $ZSH_THEME

plugins=(git     
	z
	zsh-syntax-highlighting
	fast-syntax-highlighting
	zsh-autocomplete
	zsh-autosuggestions
	colored-man-pages
	sudo ubuntu
  	bundler
  	dotenv
  	macos
  	rake
  	rbenv
  	ruby	
)
source $ZSH/oh-my-zsh.sh
zstyle ':omz:update' mode auto
