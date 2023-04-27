-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["j"] = { "<Left>" },
    ["k"] = { "v:count == 0 || mode(1)[0:1] == 'no' ? 'j' : 'gj'", expr = true, desc = "Move cursor down" },
    ["l"] = { "v:count == 0 || mode(1)[0:1] == 'no' ? 'k' : 'gk'", expr = true, desc = "Move cursor up" },
    [";"] = { "<Right>" },
    ["<leader>j"] = { "<cmd>bp<CR>", desc = "Previous tab" },
    ["<leader>;"] = { "<cmd>bn<CR>", desc = "Next tab" },

    ["<leader>s"] = { "<cmd>w<cr>", desc = "Save" },

    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["j"] = { "<Left>" },
    ["k"] = { "<Down>" },
    ["l"] = { "<Up>" },
    [";"] = { "<Right>" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
