-- plugins/fzf-lua.lua (or inside your lazy.nvim spec table)
return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      -- your fzf-lua opts here
    })
  end,
  keys = {
    -- ── Files & Buffers ──────────────────────────────────────────────────
    { "<leader>ff", "<cmd>FzfLua files<cr>",        desc = "Find Files" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>",      desc = "Find Buffers" },
    { "<leader>fo", "<cmd>FzfLua oldfiles<cr>",     desc = "Recent Files" },
    { "<leader>fr", "<cmd>FzfLua resume<cr>",       desc = "Resume Last Picker" },

    -- ── Grep / Search ────────────────────────────────────────────────────
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>",    desc = "Live Grep" },
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>",   desc = "Grep Word Under Cursor" },
    { "<leader>fW", "<cmd>FzfLua grep_cWORD<cr>",   desc = "Grep WORD Under Cursor" },
    { "<leader>fs", "<cmd>FzfLua grep_string<cr>",  desc = "Grep String (prompt)" },
    { "<leader>f/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Grep Current Buffer" },

    -- ── Git ──────────────────────────────────────────────────────────────
    { "<leader>gf", "<cmd>FzfLua git_files<cr>",    desc = "Git Files" },
    { "<leader>gc", "<cmd>FzfLua git_commits<cr>",  desc = "Git Commits" },
    { "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
    { "<leader>gs", "<cmd>FzfLua git_status<cr>",   desc = "Git Status" },

    -- ── LSP ──────────────────────────────────────────────────────────────
    { "<leader>lr", "<cmd>FzfLua lsp_references<cr>",        desc = "LSP References" },
    { "<leader>ld", "<cmd>FzfLua lsp_definitions<cr>",       desc = "LSP Definitions" },
    { "<leader>lt", "<cmd>FzfLua lsp_typedefs<cr>",          desc = "LSP Type Definitions" },
    { "<leader>li", "<cmd>FzfLua lsp_implementations<cr>",   desc = "LSP Implementations" },
    { "<leader>ls", "<cmd>FzfLua lsp_document_symbols<cr>",  desc = "Document Symbols" },
    { "<leader>lS", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", desc = "Workspace Symbols" },
    { "<leader>lx", "<cmd>FzfLua diagnostics_document<cr>",  desc = "Document Diagnostics" },
    { "<leader>lX", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
  },
}
