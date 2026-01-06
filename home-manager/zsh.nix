{ ... }:
{
  home.file.".sh_aliases".source = ./sh_aliases;

  programs.zsh = {
    enable = true;
    enableCompletion = false;
    initContent = ''
      # Shell integrations
      eval "$(fzf --zsh)"
      eval "$(zoxide init --cmd cd zsh)"

      # Zinit
      ZINIT_HOME="''${XDG_DATA_HOME:-''${HOME}/.local/share}/zinit/zinit.git"

      # Download Zinit, if it's not there yet
      if [ ! -d "$ZINIT_HOME" ]; then
         mkdir -p "$(dirname "$ZINIT_HOME")"
         git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
      fi

      source "''${ZINIT_HOME}/zinit.zsh"
      # end

      # Plugins
      zinit ice depth=1; zinit light zsh-users/zsh-syntax-highlighting

      zinit ice depth=1; zinit light zsh-users/zsh-completions
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':completion:*' menu no

      zinit ice depth=1; zinit light zsh-users/zsh-autosuggestions

      zinit ice depth=1; zinit light Aloxaf/fzf-tab
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
      zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

      zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode

      autoload -Uz compinit && compinit
      # end

      zinit cdreplay -q
      # end

      # Keybindings
      bindkey -v
      bindkey '^p' history-search-backward
      bindkey '^n' history-search-forward
      # end

      # History
      HISTSIZE=10000
      HISTFILE=~/.zsh_history
      SAVEHIST=$HISTSIZE
      HISTDUP=erase
      setopt appendhistory
      setopt sharehistory
      setopt hist_ignore_all_dups
      setopt hist_save_no_dups
      setopt hist_ignore_dups
      setopt hist_find_no_dups
      # end

      # Aliases
      if [ -f ~/.sh_aliases ]; then
        . ~/.sh_aliases
      fi
      alias ls='ls --color'
      alias c='clear'

      # Prompt
      # PS1='
      # %f[%F{cyan}%~%f]%f
      # %# '
      eval "$(starship init zsh)"

      # Startup
      fastfetch
    '';
  };
}
