# tmux-tokyonight

The tokyonight color scheme for tmux, based on [ghifarit53/tokyonight-vim](https://github.com/ghifarit53/tokyonight-vim) which inspired by [enkia/tokyo-night-vscode-theme](https://github.com/enkia/tokyo-night-vscode-theme).

![image](https://github.com/cappyzawa/demo/blob/master/tmux-tokyonight/image.png?raw=true)

The implementation of this plugin is based on [odedlaz/tmux-tokyonight-theme](https://github.com/odedlaz/tmux-tokyonight-theme).

## How to install

This plugin can be installed by tpm.

```
set -g @plugin 'cappyzawa/tmux-tokyonight'
```

or manual installation.

## How to setup

### Set Options

**!** Set the following options in your `.tmux.conf`

#### widgets

Widgets can be controlled by setting `@tokyonight_widgets`, for example:

```
set -g @tokyonight_widgets "#(date +%s)"
```

Once set, these widgets will show on the right.

**default**: empty string.

#### Time format

Time format can be controlled by setting `@tokyonight_time_format`, for example:

```
set -g @tokyonight_time_format "%I:%M %p"
```

`%I` - The hour as a decimal number using a 12-hour clock  
`%M` - The minute as a decimal number  
`%p` -  Either "AM" or "PM" according to the given time value.

**default**: `%R` - The time in 24-hour notation (%H:%M).

These modifiers were taken from from [strftime manpage](http://man7.org/linux/man-pages/man3/strftime.3.html).

#### Date format

Date format can be controlled by setting `@tokyonight_date_format`, for example:

```
set -g @tokyonight_date_format "%D"
```

`%D` - Equivalent to %m/%d/%y (American format).   
`%m` - The month as a decimal number.  
`%d` - The day of the month as a decimal number  
`%y` - The year as a decimal number without the century.  

**default**: `%d/%m/%Y` - The date in non-American format.

These modifiers were taken from from [strftime manpage](http://man7.org/linux/man-pages/man3/strftime.3.html).

### License

[MIT](LICENSE)
