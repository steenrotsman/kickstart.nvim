return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_quickfix_open_on_warning = 0

      -- Compile with LuaLaTeX
      vim.keymap.set('n', '<leader>lb', function()
        vim.g.vimtex_compiler_latexmk_engines = { _ = '-lualatex' }
        vim.cmd 'VimtexCompile'
      end, { desc = 'VimTeX [b]uild with LuaLaTeX' })
    end,
  },
}
