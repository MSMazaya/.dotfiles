require("git-worktree").setup({

})

local telescope = require('telescope')

telescope.load_extension("git_worktree")

vim.api.nvim_create_user_command("GW", function ()
    telescope.extensions.git_worktree.git_worktrees()
end, {})

vim.api.nvim_create_user_command("GWCreate", function ()
    telescope.extensions.git_worktree.create_git_worktree()
end, {})
