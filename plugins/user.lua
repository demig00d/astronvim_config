return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_enable_italic = 1
    end
  },
  { "mg979/vim-visual-multi" },
  {
    "echasnovski/mini.move",
    version = '*',
    keys = {
      { "<C-;>", mode = { "n", "v" } },
      { "<C-l>", mode = { "n", "v" } },
      { "<C-k>", mode = { "n", "v" } },
      { "<C-j>", mode = { "n", "v" } },
    },
    config = function(_, opts) require("mini.move").setup(opts) end,
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = "markdown",
  },

}
