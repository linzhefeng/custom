local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
}


-- other
-- M.other = {
--   n = {
--     ["<leader>tg"] = {"<cmd>lua _LAZYGIT_TOGGLE()<CR>","lazygit"},
--   },
--
--   i = {
--   }
-- }


M.floaterm = {
  n = {
    ["<leader>tg"] = {":FloatermNew --height=0.99 --width=0.99 --autoclose=2 lazygit<CR>", "lazygit"}
  }
}


return M
