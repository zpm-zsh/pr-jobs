# Plugin for ZSH which will display infromation about background jobs

This plugin will create a global variable that can be displayed in prompts with information about background jobs. 

### Example

```sh
PROMPT='$pr_jobs ...REST OF PROMPT'
```

This plugin is made to be fast. It runs in the background and updates information only when needed.

## Installation

### This plugin depends on [zsh-colors](https://github.com/zpm-zsh/colors).

If you don't use [zpm](https://github.com/zpm-zsh/zpm), install it manually and activate it before this plugin. 
If you use zpm you don’t need to do anything

### If you use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

* Clone this repository into `~/.oh-my-zsh/custom/plugins`
```sh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zpm-zsh/pr-jobs
```
* After that, add `pr-jobs` to your oh-my-zsh plugins array.

### If you use [Zgen](https://github.com/tarjoilija/zgen)

1. Add `zgen load zpm-zsh/pr-jobs` to your `.zshrc` with your other plugin
2. run `zgen save`

### If you use my [ZPM](https://github.com/zpm-zsh/zpm)

* Add `zpm load zpm-zsh/pr-jobs` into your `.zshrc`
