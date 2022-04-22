<!-- markdownlint-disable MD033 -->

# .dotfiles

This will bootstrap my new system :)

## Prerequisite

- Run `sudo apt-get update && sudo apt-get upgrade -y` to update system packages
- Run `sudo apt-get install git -y` to install git _(We need it to clone this repo)_

<details>
  <summary>For virtualbox</summary>
  
  If you are trying this in virtualbox and want to share host system's dir then configure your virtualbox to share dir you wanted.
  Now start your ubuntu virtual machine and after following above two steps, run `sudo apt-get install virtualbox-guest-utils -y`. This package will allow accessing the shared directory in your virtual machine.
</details>

## Credits

- https://askubuntu.com/questions/907425/how-do-i-back-up-and-restore-passwords-and-keys
- https://askubuntu.com/questions/284957/vi-getting-multiple-sorry-the-command-is-not-available-in-this-version-af