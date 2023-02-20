-- import nvim-transparent plugin safely
local setup, nvim_transparent = pcall(require, "transparent")
if not setup then
	return
end

nvim_transparent.setup({
	enable = true, -- boolean: enable transparency
	extra_groups = { -- table/string: additional groups that should cleared
		-- In particular, when you set it to 'all', that means all available groups

		-- example for akinsho/nvim-bufferline
		"BufferLineTabClose",
		"BufferLineBufferSelected",
		"BufferLineFill",
		"BufferLineBackground",
		"BufferLineSeparator",
		"BufferLineIndicatorSelected",
	},
	exclude = {},
})
