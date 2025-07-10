local defaults = {
  hlsearch = true,
}

local M = {
  _settings = vim.deepcopy(defaults)
}

function M.settings()
  return M._settings
end

function M.update(settings)
   M._settings = vim.tbl_deep_extend("force", M._settings, settings)
end

return M
