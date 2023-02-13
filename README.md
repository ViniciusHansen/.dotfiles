# Dotfiles
dotfiles são arquivos de configuração típicos dos sistemas unix-like, o `.` na frente do nome do arquivo faz ele ser oculto, então se quiser vizualizar os arquivos no terminal utilize `ls -a`
# Meus Dotfiles
nada muito absurdo foi feito aqui, apenas umas configurações no `zsh` e `vim` para facilitar meu uso
# "Instalação"
- clone o repositório na sua pasta home
- crie os links simbólicos na pasta home
    - recomendo o GNU stow (`pacman -S stow` ou `apt install stow`)

```bash
git clone https://github.com/ViniciusHansen/.dotfiles.git
cd .dotfiles
stow .
```

