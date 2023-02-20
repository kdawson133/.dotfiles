local api = vim.api -- for brevity
-- set colorscheme to nord with protected call
-- in case it has not been installed
local status, _ = pcall(vim.cmd, "colorscheme nord")
if not status then
    print("Colorscheme not found!") -- print error if not installed
    return
end

-- transparency
api.nvim_set_hl(0, "Normal", { bg = "none" })
api.nvim_set_hl(0, "NormalFloat", { bg = "none" })