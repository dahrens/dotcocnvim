## Key Mappings

| Key                          | Description                                       |
| ---------------------------- | ------------------------------------------        |
| `leader`-`/`                 | Remove search highlights                          |
| `Y`                          | Yank from cursor to line end (like `D`)           |
| `F1`                         | Open :help                                        |
| `F2`                         | Open file browser                                 |
| `F3`                         | Toggle paste mode                                 |
| **Debugger**                 |                                                   |
| `F4`                         | Restart debugger                                  |
| `leader`-`F4`                | Reset debugger (when done)                        |
| `F5`                         | Start debugger                                    |
| `F6`                         | Pause debugger                                    |
| `F7`                         | Stop debugger                                     |
| `F8`                         | AddFunctionBreakPoint (TODO: what?)               |
| `leader`-`F8`                | Run to cursor                                     |
| `F9`                         | Toggle breakpoint                                 |
| `leader`-`F9`                | Toggle conditional breakpoint                     |
| `F10`                        | Step over                                         |
| `F11`                        | Step into                                         |
| `F12`                        | Step out                                          |
| **Clipboard**                |                                                   |
| `leader`-`y`                 | Copy to clipboard                                 |
| `leader`-`Y`                 | Copy to clipboard from cursor to line end         |
| `leader`-`p`                 | Paste from clipboard below cursor line            |
| `leader`-`P`                 | Paste from clipboard above cursor line            |
| **fzf**                      |                                                   |
| `leader`-`ff`                | Fzf in :Gfiles if in a git repo otherwise :Files  |
| `leader`-`fa`                | Fzf in :Files                                     |
| `leader`-`frg`               | Fzf in :Rg                                        |
| `leader`-`fra`               | Fzf in :RgAll                                     |
| `leader`-`fss`               | Fzf in :Ag aka silver searcher                    |
| `leader`-`fh`                | Fzf in :Helptags                                  |
| `leader`-`fgh`               | Fzf in :Commits (**g**it **h**istory)             |
| `leader`-`fgb`               | Fzf in :BCommits (**g**it histoy of **b**uffer)   |
| `leader`-`fm`                | Fzf in :Marks                                     |
| `leader`-`fc`                | Fzf in :Commands                                  |
| `leader`-`fo`                | Fzf in Outline (:CocFzfList outline)              |
| `leader`-`fsn`               | Fzf in Snippets (:CocFzfList snippets)            |
| **CoC**                      |                                                   |
| `Ctrl`-`space`               | Trigger completion (triggers automatically)       |
| `Ctrl`-`h`                   | Goto previous error                               |
| `Ctrl`-`l`                   | Goto next error                                   |
| `gd`                         | Goto definition                                   |
| `gD`                         | Goto declaration                                  |
| `gy`                         | Goto type definition                              |
| `gi`                         | Goto implementation                               |
| `gr`                         | Goto reference                                    |
| `leader`-`a`                 | Apply code action on selection e.g. `<leader>aap` |
| `leader`-`ac`                | Apply code action on current buffer               |
| `leader`-`qf`                | Autofix (not vim quickfix)                        |
| `Ctrl`-`s`                   | Range select (if support by LSP)                  |
| `gh`                         | Show hover help                                   |
| `rn`                         | Rename current word                               |
| `Ctrl`-`j`                   | Snippet expand and jump                           |
|                              |                                                   |


