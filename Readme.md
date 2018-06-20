# Desktop Repository Post Install script collection

I just did this to simplify my reinstalls for home/work purposes

## How to use

Just run from the shell:

```bash
cd ubuntu
. run.sh
# Or
source run.sh
```

Cuurently best support for Ubuntu

## What it does:

Currently only for Ubuntu and supports only:

* Installs:
  * Updage the system
  * Visual Studio Code
  * NVM: Node.js, NPM and NPX
  * Git
  * JRE
  * VLC Media Player
  * Google Chrome
  * Skype
  * Telegram
  * Slack

* Setups:
  * SSH (loops through prvate keys)
  * GPG (just copies the `.gnupg` folder)
  * GIT (setup global variables to git and links gpg keys as well)

## ToDo:

* [ ] **Important!** Licensing, MIT no waranties usage
* [ ] **Important!** Add tests!
* [ ] Avoid repeatables lik in `_install_nvm.sh` file for checks
* [ ] Update structure to enable support for various distros
* [ ] Improve messeging:
  * [ ] Lessen the output, make it more compact and hide success output, but show promts and errors
  * [ ] Add some colors
* [ ] Good error handling resolution
* [ ] Add options installed programes like Telegram to be runned at startup
* [ ] Copy visual look and setup of XFCE desktop (or others) configuration
* [ ] Enhance dialogs messaging so user should make less actions
  * [ ] Configure if user want to auto accept all promts, aka `-y` to all runned statements
  * [ ] If not provide more verbose messaging to what is being done, and keep the stuff done in background... Maybe...
* [ ] Think about autoupgrades all the time when working with packages...
* [ ] Use diff tool to add the diferences from backup, and solution to resolve this manually
  * [ ] Copy keyboard shortcuts
  * [ ] Keyboard layout
  * [ ] XFCE4 settings configuration

  Resource: https://unix.stackexchange.com/a/353936 - from where which stuff to copy

* [ ] Copy configuration of programms depending on the Distro/OS, must be added to each installation option
  * [ ] Browser configuration and setup
  * [ ] VSCode configuration ...
* [ ] Add screenshots of how it works and provide a solution for diferent paths:
  
  * [ ] Front End development
  * [ ] Full Stack development
  * [ ] Java
  * [ ] and etc.

  I think this stuff can grow into some kind of tooling for ease of setup and start development independent wether repository has this or not

## Usefull links:

* [VI cheat sheet](http://www.atmos.albany.edu/daes/atmclasses/atm350/vi_cheat_sheet.pdf)
* [Coloring output with `tput`](https://stackoverflow.com/a/20983251)
