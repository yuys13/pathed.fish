# pathed.fish

Edit `$fish_user_paths` with your editor!

## Install

```fish
fisher install yuys13/pathed.fish
```

## Usage

1. Set /path/to/your/editor to `$VISUAL` or `$EDITOR`
2. Execute `pathed` function
3. Edit paths with editor(one path per line)
4. Quit the editor, edited paths apply to `$fish_user_paths`

## Description

pathed provides an interface to edit the `$fish_user_paths`
If the `$VISUAL` environment variable is set, it will be used as the program to edit the function.
If `$VISUAL` is unset but `$EDITOR` is set, that will be used.
