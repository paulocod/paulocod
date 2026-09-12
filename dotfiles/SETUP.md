# Máquina nova

Ordem que funciona, do zero até conseguir commitar.

## 1. Links

```bash
ln -sf ~/Projects/alexandria/paulocod/dotfiles/.zshrc      ~/.zshrc
ln -sf ~/Projects/alexandria/paulocod/dotfiles/.tmux.conf  ~/.tmux.conf
ln -sf ~/Projects/alexandria/paulocod/dotfiles/.gitconfig  ~/.gitconfig
mkdir -p ~/.config/alacritty ~/.config/nvim
ln -sf ~/Projects/alexandria/paulocod/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
cp -r ~/Projects/alexandria/paulocod/dotfiles/catppuccin     ~/.config/alacritty/
cp -r ~/Projects/alexandria/paulocod/dotfiles/nvim/*         ~/.config/nvim/
```

## 2. O que o `.zshrc` espera encontrar

`mise`, `eza`, `fzf`, `atuin`, `bun`, `lazydocker`, os plugins em `~/.zsh`
(`fast-syntax-highlighting`, `zsh-background-notify`) e o Android SDK em `~/Android/Sdk`.
Sem eles o shell abre reclamando, mas abre.

## 3. O que **não** está neste repositório, e precisa viajar por fora

Este repositório é **público**. Nada disto entra aqui:

- **Chave SSH privada** (`~/.ssh/id_*`). Ou copia por USB/`scp` direto entre as máquinas, ou
  gera uma nova no note e registra em github.com/settings/keys.
- **Chave GPG privada** — a mesma coisa: `gpg --export-secret-keys --armor <id> > chave.asc`,
  carrega por fora, `gpg --import chave.asc`, e depois
  `gpg --edit-key <id> trust` (nível 5). Sem ela, `commit.gpgsign = true` trava todo commit.
- **`~/.gitconfig-rentbrella`** — a identidade de trabalho que o `includeIf` do `.gitconfig`
  procura. São quatro linhas (nome, e-mail, `signingkey`, `gpgsign`); se o arquivo faltar, o
  git **não avisa** e os commits de trabalho saem com a identidade pessoal.
- **`~/.ssh/config`**, se houver host interno nele.
