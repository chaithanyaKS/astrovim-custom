return {
  -- Add the community repository of plugin specifications
  "ur4ltz/surround.nvim",
  lazy = false,
  config = function()
    require "surround".setup {
      context_offset = 100,
      load_autogroups = false,
      prompt = false,
      mappings_style = 'surround',
      map_insert_mode = true,
      quotes = { "'", '"' },
      brackets = { "(", '{', '[' },
      space_on_closing_char = false,
      pairs = {
        nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
        linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' } }
      },
      prefix = "s"
    }
  end,
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
