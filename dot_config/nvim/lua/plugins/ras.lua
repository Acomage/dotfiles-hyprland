return {
  {
    "Acomage/ras",
    dependencies = { "tjdevries/colorbuddy.nvim" },
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ras",
    },
  },
}
