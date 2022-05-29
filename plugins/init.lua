return {
   -- 代码格式化
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
 },
   -- 平滑滚动
  ["karb94/neoscroll.nvim"] = {
       config = function()
          require("neoscroll").setup()
       end,

       -- lazy loading
       setup = function()
         require("core.utils").packer_lazy_load "neoscroll.nvim"
       end,
},
  -- 多媒体文件预览
 ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
                  find_cmd = "rg", -- find command (defaults to `fd`)
               },
            },
         }
         require("telescope").load_extension "media_files"
      end,
  },
  -- 函数签名
  ["ray-x/lsp_signature.nvim"] = {
     event = 'InsertCharPre',
    config = function()
      require('custom.plugins.lspsignature')
    end,

  },
  -- 
  ["voldikss/vim-floaterm"] = {
    config = function ()
      require("custom.plugins.vim-floaterm")
    end
  }
}


