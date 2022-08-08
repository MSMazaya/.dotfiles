vim.api.nvim_create_user_command("BackBuffer", function()
    local bufnr = vim.fn.input "Back n times: "
    print(bufnr)
end, {})
