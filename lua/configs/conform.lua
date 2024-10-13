local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofumpt" },
    terraform = {"terraform_fmt"},
    css = { "prettier" },
    html = { "prettier" },
    javascript = {"prettier"},
    typescript = {"prettier"},
    typescriptreact = {"prettier"},
  },

  default_format_opts = {
    lsp_format = "fallback",
  },

  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 2500,
  },

  format_after_save = {
    lsp_format = "fallback",
  },

}

return options
