PreviousMode = vim.api.nvim_get_mode().mode

local function animateCursor()
    vim.g.neovide_cursor_animation_length = 0.06
    vim.g.neovide_cursor_trail_size = 0.7
end

local function stopCursorAnimation()
    vim.g.neovide_cursor_animation_length = 0.01
    vim.g.neovide_cursor_trail_size = 0
end

local function callWithDelay(fn, ms)
    local timer = vim.loop.new_timer()
    timer:start(ms, 0, vim.schedule_wrap(function()
        fn()
        timer:close()
    end))
end

vim.api.nvim_create_autocmd("ModeChanged", {
    group = vim.api.nvim_create_augroup("neovide_cursor_handler", { clear = true }),
    callback = function()
        mode = vim.api.nvim_get_mode().mode
        if mode == "c" then
            stopCursorAnimation()
        else
            if PreviousMode == "c" then
                stopCursorAnimation()
                callWithDelay(animateCursor, 1000)
            else
                stopCursorAnimation()
            end
        end
        PreviousMode = mode
    end,
})
