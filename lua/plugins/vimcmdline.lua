return {
  "jalvesaq/vimcmdline",
  config = function()
    vim.g.cmdline_map_start = '<LocalLeader>s'
    vim.g.cmdline_map_send = '<Space>'
    vim.g.cmdline_map_send_and_stay = '<LocalLeader><Space>'
    vim.g.cmdline_map_source_fun = '<LocalLeader>f'
    vim.g.cmdline_map_send_paragraph = '<LocalLeader>p'
    vim.g.cmdline_map_send_block = '<LocalLeader>b'
    vim.g.cmdline_map_send_motion = '<LocalLeader>m'
    vim.g.cmdline_map_quit = '<LocalLeader>q'

    vim.api.nvim_set_keymap('n', '<LocalLeader>a', [[:call VimCmdLineSendAll()<CR>]], { noremap = true, silent = true })

    -- Define the VimCmdLineSendAll function
    vim.cmd([[
      function! VimCmdLineSendAll()
        let save_pos = getpos(".")
        normal! ggVG
        call cmdline#SendSelection()
        call setpos(".", save_pos)
      endfunction
    ]])
  end,
}
