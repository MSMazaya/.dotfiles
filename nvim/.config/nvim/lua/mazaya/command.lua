vim.api.nvim_create_user_command("BackBuffer", function()
    local bufnr = vim.fn.input "Back n times: "
    print(bufnr)
end, {})


vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("latex-editing", { clear = true }),
    pattern = "*.tex",
    callback = function()
        vim.api.nvim_command("silent VimtexCompile")
    end
})
