-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'windwp/nvim-autopairs', opts = {} },
  { 'Pocco81/auto-save.nvim' },
  { "voldikss/vim-floaterm" },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  { 'mg979/vim-visual-multi' },
  { 'prettier/vim-prettier' },
}
