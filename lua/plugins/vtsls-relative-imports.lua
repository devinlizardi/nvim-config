return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            -- Ensure TS/vtsls auto-imports and organize-imports use relative paths,
            -- even when the project has a tsconfig baseUrl/paths configured.
            typescript = {
              preferences = {
                -- vtsls uses the VSCode-style preference key:
                -- https://github.com/LazyVim/LazyVim/discussions/3623
                importModuleSpecifier = "relative",
                -- keep legacy key too (harmless if ignored)
                importModuleSpecifierPreference = "relative",
                importModuleSpecifierEnding = "auto",
              },
            },
            javascript = {
              preferences = {
                importModuleSpecifier = "relative",
                importModuleSpecifierPreference = "relative",
                importModuleSpecifierEnding = "auto",
              },
            },
          },
        },
      },
    },
  },
}
