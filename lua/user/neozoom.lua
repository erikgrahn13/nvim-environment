    require('neo-zoom').setup {
      winopts = {
        offset = {
          -- NOTE: you can omit `top` and/or `left` to center the floating window.
          top = 1.0,
          left = 50.0,
          width = 0.5,
          height = 1.0,
        },
        -- NOTE: check :help nvim_open_win() for possible border values.
        -- border = 'double',
      },
      -- exclude_filetypes = { 'lspinfo', 'mason', 'lazy', 'fzf', 'qf' },
      exclude_buftypes = { 'terminal' },
    --  presets = {
    --    {
    --      filetypes = { 'dapui_.*', 'dap-repl' },
    --      config = {
    --        top = 1.0,
    --        left = 0.6,
    --        width = 0.4,
    --        height = 0.65,
    --      },
   --       callbacks = {
   --         function () vim.wo.wrap = true end,
   --       },
   --     },
   --   },
      -- popup = {
      --   -- NOTE: Add popup-effect (replace the window on-zoom with a `[No Name]`).
      --   -- This way you won't see two windows of the same buffer
      --   -- got updated at the same time.
      --   enabled = true,
      --   exclude_filetypes = {},
      --   exclude_buftypes = {},
      -- },
    }
    vim.keymap.set('n', '<CR>', function () vim.cmd('NeoZoomToggle') end, { silent = true, nowait = true })
