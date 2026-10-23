-- Hide the root folder name at the top of the explorer.
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      hide_root_node = true,
      retain_hidden_root_indent = false,
    },
  },
}
