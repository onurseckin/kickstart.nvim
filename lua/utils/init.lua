-- [[ Utility Functions ]]
-- This file contains utility functions that can be used throughout the configuration

local M = {}

-- Example utility function - you can add more as needed
M.is_available = function(plugin)
  local lazy_config_avail, lazy_config = pcall(require, 'lazy.core.config')
  return lazy_config_avail and lazy_config.spec.plugins[plugin] ~= nil
end

return M
