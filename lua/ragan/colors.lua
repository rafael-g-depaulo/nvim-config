function styleView()
    -- setup color theme
    color = "codedark"
    vim.cmd.colorscheme(color)
    -- vim.cmd("colorscheme codedark")

    -- transparency
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

styleView()

