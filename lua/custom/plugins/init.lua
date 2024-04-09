-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'windwp/nvim-autopairs', opts = {}, config = function ()
    require('nvim-autopairs').setup()
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require("cmp");
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end },
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
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      -- Only required if using match_algorithm fzf
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
  },
  { "windwp/nvim-ts-autotag", opts = {} },
}
