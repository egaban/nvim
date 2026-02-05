return {
	"saghen/blink.cmp",
	opts = {
		sources = {
			-- add lazydev to your completion providers
			default = { "lazydev", "lsp", "path", "snippets" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},
	},
}
