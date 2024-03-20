local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")

local servers = {
	texlab = {
		texlab = {
			build = {
				args = { "-pdflua", "-interaction=nonstopmode", "-synctex=1", "%f" },
				onSave = true,
			},
		},
	},
	gopls = {},
	html = {},
	rust_analyzer = {},
	pyright = {},
}

for server in pairs(servers) do
	lspconfig[server].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
		settings = servers[server],
	})
end
