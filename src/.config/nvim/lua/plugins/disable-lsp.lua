-- Disable Node-based language servers so LazyVim does not auto-install them
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = { enabled = false },
        pyright = { enabled = false },
        jsonls = { enabled = false },
      },
    },
  },
}
