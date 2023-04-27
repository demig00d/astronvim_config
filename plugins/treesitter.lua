return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
    "windwp/nvim-ts-autotag"
  },
  opts = {
    sync_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    rainbow = {
      enable = true,
      extended_mode = true, -- Highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    },
    autotag = {
      enable = true,
    },
  },
}
