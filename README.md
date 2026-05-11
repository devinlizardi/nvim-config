# Dev 💤 LazyVim Config

Personal [LazyVim](https://github.com/LazyVim/LazyVim) config. Forked from [`LazyVim/starter`](https://github.com/LazyVim/starter).

[LazyVim Repo](https://github.com/LazyVim/LazyVim) · [LazyVim Docs](https://lazyvim.github.io/installation)

## Options (`lua/config/options.lua`)

- `vim.g.lazyvim_eslint_auto_format = true` — ESLint auto-format on save
- `vim.opt.relativenumber = false` — absolute line numbers

## LazyVim Extras (`lazyvim.json`)

Enabled via `:LazyExtras`:

- **Coding** — `mini-surround`, `yanky`
- **Editor** — `mini-files`
- **Formatting** — `prettier`
- **Linting** — `eslint`
- **Lang** — `docker`, `go`, `json`, `markdown`, `typescript` (+ `tsgo`, `vtsls`)
- **UI** — `mini-animate`, `treesitter-context`
- **Util** — `dot`

LSPs (`gopls`, `vtsls`, `dockerls`, `jsonls`, `marksman`, etc.) and their Mason packages are installed automatically by the corresponding extras — no explicit Mason `ensure_installed` list is maintained.

## Custom Plugins (`lua/plugins/`)

### `vtsls-relative-imports.lua`
Forces TS/JS auto-imports and organize-imports to use **relative paths** instead of `baseUrl`/`paths` aliases. Sets `importModuleSpecifier = "relative"` on the `vtsls` LSP.

### `git-conflict.lua` — [`akinsho/git-conflict.nvim`](https://github.com/akinsho/git-conflict.nvim)
Conflict-marker navigation and resolution.

| Key | Action |
| --- | --- |
| `<leader>ho` | Take **ours** |
| `<leader>ht` | Take **theirs** |
| `<leader>hb` | Take **both** |
| `<leader>h0` | Take **none** |
| `]x` / `[x` | Next / previous conflict |
| `<leader>gx` | List conflicts in quickfix |
| `<leader>gr` | Refresh conflict detection |

### `rip-substitute.lua` — [`chrisgrieser/nvim-rip-substitute`](https://github.com/chrisgrieser/nvim-rip-substitute)
Ripgrep-powered substitute UI.

| Key | Mode | Action |
| --- | --- | --- |
| `g/` | normal / visual | Open rip-substitute |

### `convert.lua` — [`cjodo/convert.nvim`](https://github.com/cjodo/convert.nvim)
Convert units (px↔rem, etc.) inline.

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>cn` | normal | Find next convertable unit |
| `<leader>cc` | normal | Find convertable unit on current line |
| `<leader>ca` | normal / visual | Convert all of a specified unit |

### `text-case.lua` — [`johmsalas/text-case.nvim`](https://github.com/johmsalas/text-case.nvim)
Case-conversion commands. Lazy-loaded on `:Subs` and `:TextCaseStartReplacingCommand`. No custom keymaps.

### `vcl-highlighting.lua` — [`varnishcache-friends/vim-varnish`](https://github.com/varnishcache-friends/vim-varnish)
Syntax highlighting for Varnish VCL files.

### `example.lua`
Untouched LazyVim starter template — guarded by `if true then return {} end`, so it does **not** load anything. Kept as a reference.
