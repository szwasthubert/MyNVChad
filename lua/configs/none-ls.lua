local none_ls = require "null-ls"

local options = {
  sources = {
    none_ls.builtins.diagnostics.pylint,
    none_ls.builtins.formatting.black,
    none_ls.builtins.formatting.isort,
    none_ls.builtins.code_actions.refactoring,
  },
}

return options
