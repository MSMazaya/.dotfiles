require('nvim-tree').setup({
    prefer_startup_root = false,
    reload_on_bufenter = true,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    view = {
        mappings = {
            list = {
                { key = "h", action = "dir_up", mode = "n" },
                { key = "l", action = "edit", mode = "n" },
            },
        },
    }
})
