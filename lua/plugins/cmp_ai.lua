return {
  "Saghen/blink.cmp",
  optional = true,
  opts = function(_, opts)
    if not opts.keymap then opts.keymap = {} end
    opts.keymap["<Tab>"] = {
      "snippet_forward",
      function()
        if vim.g.ai_accept then return vim.g.ai_accept() end
      end,
      "fallback",
    }
    opts.keymap["<S-Tab>"] = { "snippet_backward", "fallback" }
    opts.keymap["<A-y>"] = require("minuet").make_blink_map()
    if not opts.sources then opts.sources = {} end
    opts.sources = {
      -- Enable minuet for autocomplete
      default = { "lsp", "path", "buffer", "snippets", "minuet" },
      -- For manual completion only, remove 'minuet' from default
      providers = {
        minuet = {
          name = "minuet",
          module = "minuet.blink",
          async = true,
          -- Should match minuet.config.request_timeout * 1000,
          -- since minuet.config.request_timeout is in seconds
          timeout_ms = 3000,
          score_offset = 50, -- Gives minuet higher priority among suggestions
        },
      },
    }
    if not opts.completion then opts.completion = {} end
    opts.completion = { trigger = { prefetch_on_insert = false } }
  end,
}
