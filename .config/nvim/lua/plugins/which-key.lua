return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    spec = {
      { "<leader>f", group = "Find",  icon = { icon = "󰍉", color = "cyan" } },
      { "<leader>g", group = "Git",   icon = { icon = "", color = "orange" } },
      { "<leader>l", group = "LSP",   icon = { icon = "", color = "blue" } },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
