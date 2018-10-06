# TMUX Pull Reminder

Enables displaying PR status in tmux status-right/left.

### Checklists
- [x] Initialize project
- [ ] Using Ruby to interact with Github API v3/v4
- [ ] Allow input Github Key in Tmux without editing system variable systems
- [ ] Add some funny chart to show inside tmux

### Sytem variables

Reload TMUX environment

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
(recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'nvh0412/tmux-pull-reminder'

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/nvh0412/tmux-pull-reminder ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/pull-reminder.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

If format strings are added to `status-right`, they should now be visible.

## Usage

Add `#{pull_reminders}` format strings to existing `status-right` tmux option.
Example:

    # in .tmux.conf
    set -g status-right '#{pull_reminders} | %a %h-%d %H:%M '


### Maintainer

 - [Hoa Nguyen](https://github.com/nvh0412)

### License

[MIT](LICENSE.md)
tmux plugin for Github PR remider
