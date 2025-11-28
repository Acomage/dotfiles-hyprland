return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "telescope",
      },
      sources = {
        explorer = { hidden = false, ignored = true, exclude = { "**/.git", "**/.cache" } },
      },
    },
  },
}
