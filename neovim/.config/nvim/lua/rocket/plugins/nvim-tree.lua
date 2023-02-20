local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#A3BE8C]])

nvimtree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- icon when folder is closed
                    arrow_open = "", -- icon when folder is open
                },
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false
            },
        },
    },
})
