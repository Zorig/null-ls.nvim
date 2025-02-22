local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "sqlformat",
    method = FORMATTING,
    filetypes = { "sql" },
    generator_opts = {
        command = "sqlformat",
        args = { "-" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
